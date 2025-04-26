import mysql.connector
import random

conn = mysql.connector.connect(user='dba_clinica', password='dba#1609', host='localhost', database='clinica')
cursor = conn.cursor()

cursor.execute("SET foreign_key_checks = 0")
conn.commit()

def cancelamento():
    if (random.randint(1, 3) != 1):
        return None       
    else:
        return f"{random.randint(1999, 2024)}-{random.randint(1, 12)}-{random.randint(1, 28)} {random.randint(0, 23)}:{random.randint(0, 59)}:{random.randint(0, 59)}"
id_tutor_animal = 0
atualizar = 1
def tutor_animal():
    global atualizar
    global id_tutor_animal
    if (atualizar == 1):
        id_tutor_animal = random.randint(1, 100000)
        atualizar = 0
        return id_tutor_animal
    else:
        atualizar = 1
        return id_tutor_animal


batch_size = 1
data = [
    (
     i,
     f"{random.randint(1999, 2024)}-{random.randint(1, 12)}-{random.randint(1, 28)} {random.randint(0, 23)}:{random.randint(0, 59)}:{random.randint(0, 59)}",
     f"{random.randint(1999, 2024)}-{random.randint(1, 12)}-{random.randint(1, 28)} {random.randint(0, 23)}:{random.randint(0, 59)}:{random.randint(0, 59)}",
     f"{random.randint(1999, 2024)}-{random.randint(1, 12)}-{random.randint(1, 28)} {random.randint(0, 23)}:{random.randint(0, 59)}:{random.randint(0, 59)}",
     f"{random.randint(1999, 2024)}-{random.randint(1, 12)}-{random.randint(1, 28)} {random.randint(0, 23)}:{random.randint(0, 59)}:{random.randint(0, 59)}",
     f"{random.randint(1999, 2024)}-{random.randint(1, 12)}-{random.randint(1, 28)} {random.randint(0, 23)}:{random.randint(0, 59)}:{random.randint(0, 59)}",
     f"obs_{i}",
     cancelamento(),
     i % 40,
     tutor_animal(),
     i % 20,
     tutor_animal(),
     i % 5
    )
    for i in range(1, 100001)]  # Example data
print(len(data))
for i in range(0, len(data), batch_size):
    batch = data[i:i+batch_size]
    cursor.execute("START TRANSACTION")
    conn.commit()
    cursor.executemany(
        "INSERT INTO consulta (id_consulta, agendamento, horario_agendado, chegada_animal, inicio, termino, obs, data_cancelamento, veterinario_id_veterinario, animal_id_animal, servico_id_servico, tutor_id_tutor, unidade_id_unidade)" \
        "VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)", batch)
    conn.commit()
    cursor.execute("COMMIT")
    conn.commit()
    print(i)

cursor.execute("SET foreign_key_checks = 1")
conn.commit()

cursor.close()
conn.close()