import random
from faker import Faker
import mysql.connector
from datetime import timedelta

fake = Faker('pt_BR') 

conn = mysql.connector.connect(user='dba_delivery', password='dba#1609', host='localhost', database='delivery')
cursor = conn.cursor()

cursor.execute("START TRANSACTION")
conn.commit()

for i in range(2000):

    query = ("SELECT COUNT(*) FROM entregador;")
    cursor.execute(query)
    rows_consulta = cursor.fetchall()
    count_entregador = rows_consulta[0][0]
    
    query = ("SELECT COUNT(*) FROM restaurante;")
    cursor.execute(query)
    rows_consulta = cursor.fetchall()
    count_restaurante = rows_consulta[0][0]
    
    query = ("SELECT COUNT(*) FROM cliente;")
    cursor.execute(query)
    rows_consulta = cursor.fetchall()
    count_cliente = rows_consulta[0][0]

    entregador_id = random.randint(1, count_entregador)
    restaurante_id = random.randint(1, count_restaurante)
    cliente_id = random.randint(1, count_cliente)

    query = ("SELECT endereco_cep, endereco_num_end FROM cliente_has_endereco WHERE cliente_id_cliente = %s", [cliente_id])
    cursor.execute(query)
    rows_consulta = cursor.fetchall()
    cep = rows_consulta[0][0]
    numero = rows_consulta[0][1]

    query = ("SELECT COUNT(*) FROM prato WHERE restaurante_id_restaurante = %s;", [restaurante_id])
    cursor.execute(query)
    rows_consulta = cursor.fetchall()
    count_pratos = rows_consulta[0][0]

    query = ("SELECT id_prato FROM prato WHERE restaurante_id_restaurante = %s;", [restaurante_id])
    cursor.execute(query)
    rows_consulta = cursor.fetchall()
    prato_1 = rows_consulta[0][0]

    pratos = []
    for j in range (random.randint(1, 4)):
        novo_prato = prato_1 + random.randint(0, count_pratos - 1)
        if (novo_prato not in pratos):
            params = [i, novo_prato]
            cursor.execute("INSERT INTO pedido_has_prato VALUES (%s, %s);", params)
            conn.commit()
            pratos.append(novo_prato)


    recebido = fake.date_time()
    inicio_preparo = recebido + timedelta(minutes=random.randint(1, 15))
    
    if (random.randint(1, 8) == 8):
        cancelamento = inicio_preparo + timedelta(minutes=random.randint(31, 40))

        params = [recebido, inicio_preparo, cancelamento, restaurante_id, entregador_id, cliente_id, cep, numero]  
        cursor.execute("INSERT INTO pedido VALUES (null, 'CANCELADO', %s, %s, null, null, %s, %s, %s, %s, %s, %s);", params)
        conn.commit()
        continue

    saida = inicio_preparo + timedelta(minutes=random.randint(10, 25))
    entrega = saida + timedelta(minutes=random.randint(8, 23))
    params = [recebido, inicio_preparo, saida, entrega, restaurante_id, entregador_id, cliente_id, cep, numero]  
    cursor.execute("INSERT INTO pedido VALUES (null, 'ENTREGUE', %s, %s, %s, %s, null, %s, %s, %s, %s, %s);", params)
    conn.commit()

    pagamento = entrega - timedelta(minutes=random.randint(1, 3))
    formas = ['Débito', 'Crédito', 'Pix', 'VR']
    forma = formas[random.randint(0, 3)]
    
    valor = 0
    for j in range(0, len(pratos)):
        query = ("SELECT preco FROM prato WHERE id_prato = %s;", [pratos[j]])
        cursor.execute(query)
        rows_consulta = cursor.fetchall()
        preco = rows_consulta[0][0]
        valor += preco

    params = [pagamento, forma, valor, i]  
    cursor.execute("INSERT INTO pagamento VALUES (null, %s, %s, %s, %s);", params)
    conn.commit()

    print(i)

cursor.execute("COMMIT")
conn.commit()