USE concessionaria;

-- 1. CONTATO
INSERT INTO contato (id_contato, tel_1, tel_2, email) VALUES
(1, '11999990001', '11999990002', 'contato1@email.com'),
(2, '21999990001', NULL, 'contato2@email.com'),
(3, '31999990001', NULL, 'contato3@email.com'),
(4, '41999990001', '41999990002', 'contato4@email.com'),
(5, '51999990001', NULL, 'contato5@email.com'),
(6, '61999990001', '61999990002', 'contato6@email.com'),
(7, '71999990001', NULL, 'contato7@email.com'),
(8, '81999990001', NULL, 'contato8@email.com'),
(9, '91999990001', '91999990002', 'contato9@email.com'),
(10, '10199990001', NULL, 'contato10@email.com');

-- 2. ENDERECO
INSERT INTO endereco (id_endereco, cep, numero_end, rua, bairro, cidade, estado) VALUES
(1, '01001-000', 100, 'Rua A', 'Centro', 'São Paulo', 'SP'),
(2, '20010-000', 200, 'Rua B', 'Copacabana', 'Rio de Janeiro', 'RJ'),
(3, '30110-000', 300, 'Rua C', 'Savassi', 'Belo Horizonte', 'MG'),
(4, '40020-000', 400, 'Rua D', 'Barra', 'Salvador', 'BA'),
(5, '50030-000', 500, 'Rua E', 'Boa Viagem', 'Recife', 'PE'),
(6, '60040-000', 600, 'Rua F', 'Meireles', 'Fortaleza', 'CE'),
(7, '70050-000', 700, 'Rua G', 'Asa Sul', 'Brasília', 'DF'),
(8, '80060-000', 800, 'Rua H', 'Centro', 'Curitiba', 'PR'),
(9, '90070-000', 900, 'Rua I', 'Moinhos', 'Porto Alegre', 'RS'),
(10, '10080-000', 1000, 'Rua J', 'Centro', 'Goiânia', 'GO');

-- 3. MARCA
INSERT INTO marca (nome_montadora, origem, contato_id_contato) VALUES
('Ford', 'EUA', 1),
('Volkswagen', 'Alemanha', 2),
('Toyota', 'Japão', 3),
('Fiat', 'Itália', 4),
('Hyundai', 'Coreia', 5),
('Chevrolet', 'EUA', 6),
('Honda', 'Japão', 7),
('Renault', 'França', 8),
('Nissan', 'Japão', 9),
('Peugeot', 'França', 10);

-- 4. VEICULO
INSERT INTO veiculo (renavam, chassi, modelo, ano_modelo, ano_fabricacao, cor, potencia, placa, capacidade, valor_fipe, tipo_combustivel, marca_id_marca) VALUES
('RENAVAM001', 'CHASSI001', 'Ka', 2020, 2019, 'Prata', 85, 'ABC1A01', 5, 30000.0, 'Flex', 1),
('RENAVAM002', 'CHASSI002', 'Gol', 2021, 2020, 'Preto', 90, 'DEF2B02', 5, 35000.0, 'Flex', 2),
('RENAVAM003', 'CHASSI003', 'Corolla', 2022, 2022, 'Branco', 150, 'GHI3C03', 5, 90000.0, 'Gasolina', 3),
('RENAVAM004', 'CHASSI004', 'Uno', 2020, 2019, 'Vermelho', 75, 'JKL4D04', 5, 25000.0, 'Flex', 4),
('RENAVAM005', 'CHASSI005', 'HB20', 2021, 2020, 'Azul', 95, 'MNO5E05', 5, 40000.0, 'Flex', 5),
('RENAVAM006', 'CHASSI006', 'Onix', 2022, 2022, 'Cinza', 110, 'PQR6F06', 5, 55000.0, 'Flex', 6),
('RENAVAM007', 'CHASSI007', 'Civic', 2021, 2020, 'Preto', 160, 'STU7G07', 5, 120000.0, 'Gasolina', 7),
('RENAVAM008', 'CHASSI008', 'Kwid', 2020, 2019, 'Branco', 70, 'VWX8H08', 5, 32000.0, 'Flex', 8),
('RENAVAM009', 'CHASSI009', 'Versa', 2022, 2021, 'Prata', 115, 'YZA9I09', 5, 60000.0, 'Flex', 9),
('RENAVAM010', 'CHASSI010', '208', 2021, 2020, 'Azul', 100, 'BCD0J10', 5, 58000.0, 'Flex', 10);

-- 5. UNIDADE
INSERT INTO unidade (id_unidade, nome_unidade, endereco_id_endereco, contato_id_contato) VALUES
(1, 'Unidade São Paulo', 1, 1),
(2, 'Unidade Rio', 2, 2),
(3, 'Unidade BH', 3, 3),
(4, 'Unidade Salvador', 4, 4),
(5, 'Unidade Recife', 5, 5),
(6, 'Unidade Fortaleza', 6, 6),
(7, 'Unidade Brasília', 7, 7),
(8, 'Unidade Curitiba', 8, 8),
(9, 'Unidade POA', 9, 9),
(10, 'Unidade Goiânia', 10, 10);

-- 6. VENDEDOR
INSERT INTO vendedor (id_vendedor, nome_vendedor, data_nasc_vendedor, contato_id_contato, unidade_id_unidade) VALUES
(1, 'Carlos Silva', '1985-01-10', 1, 1),
(2, 'Joana Souza', '1990-03-22', 2, 2),
(3, 'Pedro Lima', '1982-07-15', 3, 3),
(4, 'Maria Costa', '1995-12-05', 4, 4),
(5, 'Rafael Mendes', '1988-09-30', 5, 5),
(6, 'Luciana Dias', '1992-11-11', 6, 6),
(7, 'Fernando Rocha', '1983-04-20', 7, 7),
(8, 'Amanda Pires', '1996-06-18', 8, 8),
(9, 'Ricardo Alves', '1989-08-08', 9, 9),
(10, 'Juliana Neves', '1993-10-25', 10, 10);

-- 7. COMPRADOR
INSERT INTO comprador (cpf_cnpj_comprador, nome_comprador, data_nasc_comprador, responsavel_pj, endereco_id_endereco, contato_id_contato) VALUES
('12345678900', 'Eduardo Martins', '1980-02-14', NULL, 1, 1),
('22345678900', 'Sandra Lima', '1992-07-22', NULL, 2, 2),
('32345678900', 'Felipe Rocha', '1985-04-10', NULL, 3, 3),
('42345678900', 'Patrícia Souza', '1991-09-05', NULL, 4, 4),
('52345678900', 'Empresa Alpha Ltda', NULL, 'João Silva', 5, 5),
('62345678900', 'Empresa Beta S/A', NULL, 'Marcos Teixeira', 6, 6),
('72345678900', 'Rogério Dias', '1983-06-25', NULL, 7, 7),
('82345678900', 'Bianca Monteiro', '1994-03-19', NULL, 8, 8),
('92345678900', 'Empresa Gama ME', NULL, 'Fernanda Melo', 9, 9),
('102345678900', 'Marcelo Torres', '1978-12-30', NULL, 10, 10);

-- 8. VENDA
INSERT INTO venda (valor_venda, forma_pagto, comissao, data_hora_compra, vendedor_id_vendedor, comprador_cpf_cnpj_comprador, veiculo_renavam, unidade_id_unidade) VALUES
(28000.0, 'À Vista', 1500.0, '2007-01-15 10:00:00', 1, '12345678900', 'RENAVAM001', 1),
(34000.0, 'Financiado', 1800.0, '2008-01-20 14:30:00', 2, '22345678900', 'RENAVAM002', 2),
(92000.0, 'À Vista', 4000.0, '2009-02-01 09:15:00', 3, '32345678900', 'RENAVAM003', 3),
(26000.0, 'Financiado', 1300.0, '2010-02-10 11:45:00', 4, '42345678900', 'RENAVAM004', 4),
(41000.0, 'À Vista', 2000.0, '2011-02-15 16:00:00', 5, '52345678900', 'RENAVAM005', 5),
(57000.0, 'Cartão', 2800.0, '2012-03-03 13:20:00', 6, '62345678900', 'RENAVAM006', 6),
(118000.0, 'À Vista', 5000.0, '2013-03-10 15:10:00', 7, '72345678900', 'RENAVAM007', 7),
(31000.0, 'Financiado', 1400.0, '2014-03-15 12:00:00', 8, '82345678900', 'RENAVAM008', 8),
(62000.0, 'À Vista', 2500.0, '2015-03-20 17:30:00', 9, '92345678900', 'RENAVAM009', 9),
(56000.0, 'Financiado', 2200.0, '2016-03-25 10:50:00', 10, '102345678900', 'RENAVAM010', 10);
