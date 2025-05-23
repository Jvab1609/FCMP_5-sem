import mysql.connector
import random
import names

conn = mysql.connector.connect(user='dba_escola', password='dba_escola', host='localhost', database='escola')
cursor = conn.cursor()

cursor.execute("SET foreign_key_checks = 0")
conn.commit()
print("começando")
batch_size = 1
data = [
    (f"{names.get_full_name()}", 
     f"{random.randint(1, 11)}")
    for i in range(1, 101)]
print(len(data))
for i in range(0, len(data), batch_size):
    batch = data[i:i+batch_size]
    cursor.execute("START TRANSACTION")
    conn.commit()
    cursor.executemany(
        "INSERT INTO professor " \
        "VALUES (null, %s, %s)", batch)
    conn.commit()
    cursor.execute("COMMIT")
    conn.commit()
    print(i)

cursor.execute("SET foreign_key_checks = 1")
conn.commit()

cursor.close()
conn.close()