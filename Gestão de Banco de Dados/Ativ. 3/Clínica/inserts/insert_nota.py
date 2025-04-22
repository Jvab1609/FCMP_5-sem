import mysql.connector
import random

conn = mysql.connector.connect(user='dba_clinica', password='dba#1609', host='localhost', database='clinica')
cursor = conn.cursor()

cursor.execute("SET foreign_key_checks = 0")
conn.commit()

batch_size = 1
data = [
    (
     i,
     float(random.randint(50, 1000)),
     f"forma_{i}",
     f"obs_{i}",
     i,
     i,
     i,
     i,
     i
    )
    for i in range(1, 100001)]  # Example data
print(len(data))
for i in range(0, len(data), batch_size):
    batch = data[i:i+batch_size]
    cursor.execute("START TRANSACTION")
    conn.commit()
    cursor.executemany(
        "INSERT INTO nota (id_nota, valor_pago, forma_pagto, obs, tutor_id_tutor, consulta_id_consulta, consulta_veterinario_id_veterinario, consulta_animal_id_animal, consulta_servico_id_servico)" \
        "VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s)", batch)
    conn.commit()
    cursor.execute("COMMIT")
    conn.commit()
    print(i)

cursor.execute("SET foreign_key_checks = 1")
conn.commit()

cursor.close()
conn.close()