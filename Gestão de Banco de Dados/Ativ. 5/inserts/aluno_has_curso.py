import mysql.connector
import random
import names
import math

conn = mysql.connector.connect(user='dba_escola', password='dba_escola', host='localhost', database='escola')
cursor = conn.cursor()

cursor.execute("SET foreign_key_checks = 0")
conn.commit()
print("começando")
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

cursor.execute("SET foreign_key_checks = 1")
conn.commit()

cursor.close()
conn.close()