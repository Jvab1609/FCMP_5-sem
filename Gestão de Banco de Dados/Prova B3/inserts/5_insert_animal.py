import mysql.connector
import random
import names

conn = mysql.connector.connect(user='dba_clinica', password='dba#1609', host='localhost', database='clinica')
cursor = conn.cursor()

cursor.execute("SET foreign_key_checks = 0")
conn.commit()

batch_size = 1
data = [
    (i,
     f"{names.get_first_name()}", 
     f"{random.randint(1999, 2024)}-{random.randint(1, 12)}-{random.randint(1, 28)}",
     f"especie_{i}",
     f"raca_{i}",
     f"porte_{i}",
     random.randint(5, 50),
     f"obs_{i}",
     0
    )
    for i in range(1, 100001)]  # Example data
print(len(data))
for i in range(0, len(data), batch_size):
    batch = data[i:i+batch_size]
    cursor.execute("START TRANSACTION")
    conn.commit()
    cursor.executemany(
        "INSERT INTO animal (id_animal, nome_animal, data_nasc_animal, especie, raca, porte, peso, obs, excluido)" \
        "VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s)", batch)
    conn.commit()
    cursor.execute("COMMIT")
    conn.commit()
    print(i)

cursor.execute("SET foreign_key_checks = 1")
conn.commit()

cursor.close()
conn.close()