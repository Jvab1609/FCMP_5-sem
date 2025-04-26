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


# def tutor_animal():
#     global atualizar_ta
#     global id_tutor_animal
#     if (atualizar_ta == 1):
#         id_tutor_animal = random.randint(1, 100000)
#         atualizar_ta = 0
#         return id_tutor_animal
#     else:
#         atualizar_ta = 1
#         return id_tutor_animal

query = ("SELECT id_consulta, veterinario_id_veterinario, animal_id_animal, servico_id_servico, tutor_id_tutor, unidade_id_unidade FROM consulta WHERE data_cancelamento IS NULL")

cursor.execute(query)
rows_consulta = cursor.fetchall()
print(count)
print(rows_consulta[1][0])
formas = ['Pix', 'Débito', 'Crédito', 'Dinheiro', 'Boleto']

batch_size = 1
data = [
    (
     i + 1,
     float(random.randint(100, 1000)),
     f"{formas[i % 5]}",
     f"obs_{i}",
     rows_consulta[i][0],
     rows_consulta[i][1],
     rows_consulta[i][2],
     rows_consulta[i][3],
     rows_consulta[i][4],
     rows_consulta[i][5],
    )
    for i in range(count)]  # Example data
print(len(data))
for i in range(0, len(data), batch_size):
    batch = data[i:i+batch_size]
    cursor.execute("START TRANSACTION")
    conn.commit()
    cursor.executemany(
        "INSERT INTO nota (id_nota, valor_pago, forma_pagto, obs, consulta_id_consulta, consulta_veterinario_id_veterinario, consulta_animal_id_animal, consulta_servico_id_servico, consulta_tutor_id_tutor, consulta_unidade_id_unidade)" \
        "VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s)", batch)
    conn.commit()
    cursor.execute("COMMIT")
    conn.commit()
    print(i)

cursor.execute("SET foreign_key_checks = 1")
conn.commit()

cursor.close()
conn.close()