import mysql.connector
import random

conn = mysql.connector.connect(user='dba_clinica', password='dba#1609', host='localhost', database='clinica')
cursor = conn.cursor()

cursor.execute("SET foreign_key_checks = 0")
conn.commit()

id_tutor_animal = 0
atualizar_ta = 1



cursor.execute("SELECT COUNT(*) FROM clinica.consulta WHERE data_cancelamento IS NULL;")
rows_count = cursor.fetchall()

count = rows_count[0][0]


def tutor_animal():
    global atualizar_ta
    global id_tutor_animal
    if (atualizar_ta == 1):
        id_tutor_animal = random.randint(1, 100000)
        atualizar_ta = 0
        return id_tutor_animal
    else:
        atualizar_ta = 1
        return id_tutor_animal

def info_consulta():
    query = ("SELECT senha FROM usuario")

    parametros = [request.form.get("login")]
    cursor.execute(query, parametros)
    rows = cursor.fetchall()

batch_size = 1
data = [
    (
     i,
     float(random.randint(100, 1000)),
     f"forma_{i}",
     f"obs_{i}",
     i,
     i,
     i,
     i,
     i
    )
    for i in range(1, count + 1)]  # Example data
print(len(data))
for i in range(0, len(data), batch_size):
    batch = data[i:i+batch_size]
    cursor.execute("START TRANSACTION")
    conn.commit()
    cursor.executemany(
        "INSERT INTO nota (id_nota, valor_pago, forma_pagto, obs, tutor_id_tutor, consulta_id_consulta, consulta_veterinario_id_veterinario, consulta_animal_id_animal, consulta_servico_id_servico, consulta_tutor_id_tutor, consulta_unidade_id_unidade)" \
        "VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s)", batch)
    conn.commit()
    cursor.execute("COMMIT")
    conn.commit()
    print(i)

cursor.execute("SET foreign_key_checks = 1")
conn.commit()

cursor.close()
conn.close()