import random
from faker import Faker
fake = Faker('pt_BR') 

with open("inserts_entregador.sql", "w", encoding="utf-8") as f:

    nome = fake.name()
    cnh = random.randint(10000000000, 99999999999)
    cpf = fake.cpf()
    cep = fake.postcode()
    numero = random.randint(1, 999)
    rua = fake.street_name()
    bairro = fake.bairro()
    cidade = fake.city()
    estado = fake.estado_sigla()
    telefone = fake.phone_number()

    print(f"INSERT INTO entregador VALUES (null, '{nome}', '{cpf}', 0);")
    print(f"INSERT INTO endereco VALUES ('{cep}', {numero}, '{rua}', '{bairro}', '{cidade}', '{estado}', null, null);")
    print(f"INSERT INTO usuario_has_endereco VALUES (null, LAST_INSERT_ID(), '{cep}', {numero});")
    print(f"INSERT INTO telefone VALUES ('{telefone}', null, null, LAST_INSERT_ID());\n")


    for i in range(100):
        nome = fake.name()
        cpf = fake.cpf()
        f.write(f"INSERT INTO usuario VALUES (null, '{nome}', '{cpf}', 0);\n")

f.close()