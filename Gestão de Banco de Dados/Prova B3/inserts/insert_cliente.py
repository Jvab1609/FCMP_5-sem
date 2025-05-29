import random
from faker import Faker
import mysql.connector

fake = Faker('pt_BR') 

conn = mysql.connector.connect(user='dba_delivery', password='dba#1609', host='localhost', database='delivery')
cursor = conn.cursor()

cursor.execute("START TRANSACTION")
conn.commit()

for i in range(500):

    nome = fake.name()
    cpf = fake.cpf()

    params = [nome, cpf]  

    cursor.execute("INSERT INTO cliente VALUES (null, %s, %s, 0);", params)
    conn.commit()
    
    query = ("SELECT last_insert_id();")
    cursor.execute(query)
    rows_consulta = cursor.fetchall()
    cliente_id = rows_consulta[0][0]

    telefone = fake.phone_number()
    params = [telefone, cliente_id]

    cursor.execute("INSERT INTO telefone VALUES (%s, null, null, %s)", params)
    conn.commit()

    username = f"user_entr_{nome.lower().split(' ')[0]}{i}"
    email = f"{nome.lower().replace(' ', '.')}{i}@gmail.com"
    senha = f"senha_{nome.lower()}"
    params = [username, email, senha, cliente_id]

    cursor.execute("INSERT INTO login VALUES(null, %s, %s, sha1(%s), null, null, %s)", params)
    conn.commit()

    cep = fake.postcode()
    numero = random.randint(1, 2000)
    rua = fake.street_name()
    bairro = fake.bairro()
    cidade = fake.city()
    estado = fake.estado_sigla()

    params = [cep, numero, rua, bairro, cidade, estado]
    cursor.execute("INSERT INTO endereco VALUES (%s, %s, %s, %s, %s, %s, null, null);", params)
    conn.commit()

    params = [cliente_id, cep, numero]
    cursor.execute("INSERT INTO cliente_has_endereco VALUES ('CASA', %s, %s, %s);", params)
    conn.commit()

    if (random.randint(1, 4) == 4):
        cep = fake.postcode()
        numero = random.randint(1, 2000)
        rua = fake.street_name()
        bairro = fake.bairro()

        params = [cep, numero, rua, bairro, cidade, estado]
        cursor.execute("INSERT INTO endereco VALUES (%s, %s, %s, %s, %s, %s, null, null);", params)
        conn.commit()

        params = [cliente_id, cep, numero]
        cursor.execute("INSERT INTO cliente_has_endereco VALUES ('TRABALHO', %s, %s, %s);", params)
        conn.commit()
    print(i)

cursor.execute("COMMIT")
conn.commit()