import mysql.connector
import random

conn = mysql.connector.connect(user='dba_clinica', password='dba#1609', host='localhost', database='clinica')
cursor = conn.cursor()

cursor.execute("SET foreign_key_checks = 0")
conn.commit()

batch_size = 1
data = [
    (i % 20 + 1,
     i, 
     f"{random.randint(2015, 2024)}-{random.randint(1, 12)}-{random.randint(1, 28)}",
     f"{random.randint(2015, 2024)}-{random.randint(1, 12)}-{random.randint(1, 28)}",
     f"obs_{i}"
    )
    for i in range(1, 100001)]  # Example data
print(len(data))
for i in range(0, len(data), batch_size):
    batch = data[i:i+batch_size]
    cursor.execute("START TRANSACTION")
    conn.commit()
    cursor.executemany(
        "INSERT INTO animal_has_vacina (vacina_id_vacina, animal_id_animal, data_vac, data_validade, obs)" \
        "VALUES (%s, %s, %s, %s, %s)", batch)
    conn.commit()
    cursor.execute("COMMIT")
    conn.commit()
    print(i)

cursor.execute("SET foreign_key_checks = 1")
conn.commit()

cursor.close()
conn.close()