import mysql.connector
import random
from faker import Faker

fake = Faker('pt_BR') 

conn = mysql.connector.connect(user='dba_clinica', password='dba#1609', host='localhost', database='clinica')
cursor = conn.cursor()

cursor.execute("SET foreign_key_checks = 0")
conn.commit()
print("começando")
batch_size = 1
data = [
    fake.
    (i, 
     f"{random.randint(10000000000, 99999999999)}",
     f"{names.get_first_name()}", 
     f"{random.randint(1950, 2006)}-{random.randint(1, 12)}-{random.randint(1, 28)}",
     f"email_{i}@gmail.com",
     0,
     f"login_{i}",
     f"senha_{i}")
    for i in range(1, 501)]
print(len(data))
for i in range(0, len(data), batch_size):
    batch = data[i:i+batch_size]
    cursor.execute("START TRANSACTION")
    conn.commit()
    cursor.executemany(
        "INSERT INTO entregador (id_entregador, nome_entregador, cnh, cpf, nota_media_entregador, excluido) " \
        "VALUES (%s, %s, %s, %s, %s, %s, %s, %s)", batch)
    conn.commit()
    cursor.execute("COMMIT")
    conn.commit()
    print(i)

cursor.execute("SET foreign_key_checks = 1")
conn.commit()

cursor.close()
conn.close()

INSERT INTO entregador VALUES (null, 'Jackson Five', '11111111111', '11111111111', null, 0);
INSERT INTO endereco VALUES ('04534011', 123, 'Avenida Santo Amaro', 'Brooklin', 'São Paulo', 'SP', 1, null);
INSERT INTO telefone VALUES ('11111111111', 1, null, null);
INSERT INTO login VALUES (null, 'jackson5', 'jackson.five@gmail.com', sha1('senhaJackson5'), 1, null, null);




for j in range (0, 12):
    batch_size = 1
    data = [
        (i,
        j,
        round(random.uniform(0, 10), 1))
        for i in range(1, random.randint(151, 501))]
    print(len(data))
    for i in range(0, len(data), batch_size):
        batch = data[i:i+batch_size]
        cursor.execute("START TRANSACTION")
        conn.commit()
        cursor.executemany(
            "INSERT INTO aluno_has_curso " \
            "VALUES (%s, %s, %s)", batch)
        conn.commit()
        cursor.execute("COMMIT")
        conn.commit()
        print(i)
