import mysql.connector
import random

conn = mysql.connector.connect(user='dba_clinica', password='dba#1609', host='localhost', database='clinica')
cursor = conn.cursor()

cursor.execute("SET foreign_key_checks = 0")
conn.commit()

cidades = ['São Paulo', 'Belo Horizonte', 'Rio de Janeiro', 'Florianópolis', 'Curitiba']
estados = ['SP', 'MG', 'RJ', 'SC', 'PR']

batch_size = 1
data = [
    (i, 
     i % 1000,
     f"rua_{i}",
     f"bairro_{i}",
     f"{cidades[i % 5]}",
     f"{estados[i % 5]}"
    )
    for i in range(1, 100001)]  # Example data
print(len(data))
for i in range(0, len(data), batch_size):
    batch = data[i:i+batch_size]
    cursor.execute("START TRANSACTION")
    conn.commit()
    cursor.executemany(
        "INSERT INTO endereco (cep, num_end, rua, bairro, cidade, estado)" \
        "VALUES (%s, %s, %s, %s, %s, %s)", batch)
    conn.commit()
    cursor.execute("COMMIT")
    conn.commit()
    print(i)

cursor.execute("SET foreign_key_checks = 1")
conn.commit()

cursor.close()
conn.close()