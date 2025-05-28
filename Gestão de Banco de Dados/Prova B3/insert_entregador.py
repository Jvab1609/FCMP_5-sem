import random
from faker import Faker
import mysql.connector

fake = Faker('pt_BR') 
#print(f"telefone: {fake.phone_number()}")
conn = mysql.connector.connect(user='dba_delivery', password='dba#1609', host='localhost', database='delivery')
cursor = conn.cursor()

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
    #f.write(f"INSERT INTO entregador VALUES (null, '{nome}', '{cnh}', '{cpf}', {nota}, 0);")
    query = ("SELECT last_insert_id();")

    cursor.execute(query)
    rows_consulta = cursor.fetchall()
    entregador_id = rows_consulta[0][0]

    cep = fake.postcode()
    numero = random.randint(1, 999)
    rua = fake.street_name()
    bairro = fake.bairro()
    cidade = fake.city()
    estado = fake.estado_sigla()

    params = [cep, numero, rua, bairro, cidade, estado, entregador_id]
    cursor.execute("INSERT INTO endereco VALUES (%s, %s, %s, %s, %s, %s, %s, null);", params)
    conn.commit()

    telefone = fake.phone_number()
    params = [telefone, entregador_id]
    #print(telefone)
    cursor.execute("INSERT INTO telefone VALUES (%s, %s, null, null)", params)
    conn.commit()

    username = f"user_{entregador_id}"
    email = f"{nome.lower().replace(' ', '.')}@gmail.com"
    senha = f"senha_{nome.lower()}"
    params = [username, email, senha, entregador_id]

    cursor.execute("INSERT INTO login VALUES(null, %s, %s, sha1(%s), %s, null, null)", params)
    conn.commit()

    print(i)

cursor.execute("COMMIT")
conn.commit()