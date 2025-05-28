import random
from faker import Faker
import mysql.connector

fake = Faker('pt_BR') 

conn = mysql.connector.connect(user='dba_delivery', password='dba#1609', host='localhost', database='delivery')
cursor = conn.cursor()

cursor.execute("START TRANSACTION")
conn.commit()

tipos_comida = ['Pizza', 'Sushi', 'Hamburguer', 'Tapioca', 'Churrasco', 'Salada', 'Pastel', 'Massa', 'Tacos', 'Crepe', 'Coxinha']
adjetivos = ['Saboroso', 'Delícia', 'Caseiro', 'Original', 'Rápido', 'Gourmet', 'Brasileiro', 'Premium', 'Top', 'Da Hora']
sufixos = ['Bar', 'Grill', 'Express', 'Food', 'Restaurante', 'Bistrô', 'House', 'Lounge', 'Point', 'Lanches']

def gerar_nome_restaurante():
    tipo = random.choice(tipos_comida)
    adj = random.choice(adjetivos)
    sufixo = random.choice(sufixos)
    return f"{tipo} {adj} {sufixo}"


proteinas = ['Frango', 'Carne', 'Peixe', 'Tofu', 'Camarão', 'Porco', 'Lula']
preparos = ['Grelhado', 'Assado', 'Frito', 'Ao molho', 'Empanado', 'Na manteiga', 'Defumado']
acompanhamentos = ['com arroz', 'com legumes', 'com batata', 'com salada', 'com farofa', 'com purê', 'com macarrão']
estilos = ['à moda da casa', 'oriental', 'brasileiro', 'italiano', 'mexicano', 'caipira', 'fit']

def gerar_nome_prato():
    prot = random.choice(proteinas)
    prep = random.choice(preparos)
    acomp = random.choice(acompanhamentos)
    estilo = random.choice(estilos)
    return f"{prot} {prep} {acomp} ({estilo})"


for i in range(100):

    nome = gerar_nome_restaurante()
    cnpj = fake.cnpj()
    taxa = 0 + random.randint(0, 4)*5
    nota = 0
    faixa_preco = random.randint(1, 4)

    params = [nome, cnpj, taxa, nota, faixa_preco]  

    cursor.execute("INSERT INTO restaurante VALUES (null, %s, %s, %s, %s, %s, 0);", params)
    conn.commit()
    
    query = ("SELECT last_insert_id();")

    cursor.execute(query)
    rows_consulta = cursor.fetchall()
    rest_id = rows_consulta[0][0]

    cep = fake.postcode()
    numero = random.randint(1, 999)
    rua = fake.street_name()
    bairro = fake.bairro()
    cidade = fake.city()
    estado = fake.estado_sigla()

    params = [cep, numero, rua, bairro, cidade, estado, rest_id]
    cursor.execute("INSERT INTO endereco VALUES (%s, %s, %s, %s, %s, %s, null, %s);", params)
    conn.commit()

    telefone = fake.phone_number()
    params = [telefone, rest_id]

    cursor.execute("INSERT INTO telefone VALUES (%s, null, %s, null)", params)
    conn.commit()

    username = f"user_rest_{nome.lower().split(' ')[0]}{i}"
    email = f"vendas@{nome.lower().split(' ')[0]}{i}.com.br"
    senha = f"senha_{nome.lower()}"
    params = [username, email, senha, rest_id]

    cursor.execute("INSERT INTO login VALUES(null, %s, %s, sha1(%s), null, %s, null)", params)
    conn.commit()

    # Insert dos pratos

    for j in range(random.randint(5, 10)):
        preco = round(random.uniform(20, 40) * faixa_preco, 2)
        nome_prato = gerar_nome_prato()
        descricao = "Descrição genérica do prato"

        params = [preco, nome_prato, descricao, rest_id]

        cursor.execute("INSERT INTO prato VALUES(null, %s, %s, %s, 0, %s)", params)
        conn.commit()
    print(i)

cursor.execute("COMMIT")
conn.commit()