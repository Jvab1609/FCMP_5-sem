import random
from faker import Faker
import mysql.connector

fake = Faker('pt_BR') 

conn = mysql.connector.connect(user='dba_delivery', password='dba#1609', host='localhost', database='delivery')
cursor = conn.cursor()

cidades = ['Campinas', 'São Paulo']
bairros_sp = ['Moema', 'Jardins', 'Pinheiros', 'Mooca', 'Higienópolis', 'Liberdade']
bairros_cps = ['Cambuí', 'Centro', 'Taquaral', 'Gramado', 'Bonfim', 'Guanabara']

def escolher_cidade():
    cidade = random.choice(cidades)
    return cidade

def escolher_bairro(cidade):
    if (cidade == 'Campinas'):
        bairro = random.choice(bairros_cps)
    elif (cidade == 'São Paulo'):
        bairro = random.choice(bairros_sp)
    return bairro



cursor.execute("START TRANSACTION")
conn.commit()

for i in range(100):

    nome = fake.name()
    cnh = random.randint(10000000000, 99999999999)
    cpf = fake.cpf()
    nota = 0

    params = [nome, cnh, cpf, nota]  

    cursor.execute("INSERT INTO entregador VALUES (null, %s, %s, %s, %s, 0);", params)
    conn.commit()
    
    query = ("SELECT last_insert_id();")

    cursor.execute(query)
    rows_consulta = cursor.fetchall()
    entregador_id = rows_consulta[0][0]

    cep = fake.postcode()
    numero = random.randint(1, 2000)
    rua = fake.street_name()
    cidade = escolher_cidade()
    bairro = escolher_bairro(cidade)  
    estado = "SP"
    # bairro = fake.bairro()
    # cidade = fake.city()
    # estado = fake.estado_sigla()

    params = [cep, numero, rua, bairro, cidade, estado, entregador_id]
    cursor.execute("INSERT INTO endereco VALUES (%s, %s, %s, %s, %s, %s, %s, null);", params)
    conn.commit()

    telefone = fake.phone_number()
    params = [telefone, entregador_id]

    cursor.execute("INSERT INTO telefone VALUES (%s, %s, null, null)", params)
    conn.commit()

    username = f"user_entr_{nome.lower().split(' ')[0]}{i}"
    email = f"{nome.lower().replace(' ', '.')}{i}@gmail.com"
    senha = f"senha_{nome.lower()}"
    params = [username, email, senha, entregador_id]

    cursor.execute("INSERT INTO login VALUES(null, %s, %s, sha1(%s), %s, null, null)", params)
    conn.commit()

    print(i)

cursor.execute("COMMIT")
conn.commit()