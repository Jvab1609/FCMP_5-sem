import mysql.connector
import random

conn = mysql.connector.connect(user='dba_clinica', password='dba#1609', host='localhost', database='clinica')
cursor = conn.cursor()

cursor.execute("SET foreign_key_checks = 0")

batch_size = 1
data = [
    (i, f"cpf_{i}",
     f"nome_{i}", 
     f"{random.randint(1950, 2006)}-{random.randint(1, 12)}-{random.randint(1, 28)}",
     f"email_{i}@gmail.com",
     0,
     f"login_{i}",
     f"senha_{i}")
    for i in range(1, 100001)]  # Example data
print(len(data))
for i in range(0, len(data), batch_size):
    batch = data[i:i+batch_size]
    cursor.execute("START TRANSACTION")
    cursor.executemany(
        "INSERT INTO tutor (id_tutor, cpf_tutor, nome_tutor, data_nasc_tutor, email_tutor, excluido, login_tutor, senha_tutor) " \
        "VALUES (%s, %s, %s, %s, %s, %s, %s, %s)", batch)
    conn.commit()
    cursor.execute("COMMIT")
# INSERT INTO tutor (cpf_tutor, nome_tutor, data_nasc_tutor, email_tutor, excluido, login_tutor, senha_tutor)
# VALUES ('12345678901', 'João Silva', '1980-01-01', 'joao@email.com', 0, 'joaos', 'senha123');

cursor.execute("SET foreign_key_checks = 1")

cursor.close()
conn.close()