USE concessionaria;

-- 1. CONTATO
INSERT INTO contato VALUES
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
INSERT INTO endereco VALUES
('01000-000', 100, 'Rua A', 'Centro', 'São Paulo', 'SP'),
('01000-001', 101, 'Rua B', 'Jardins', 'São Paulo', 'SP'),
('01000-002', 102, 'Rua C', 'Moema', 'São Paulo', 'SP'),
('01000-003', 103, 'Rua D', 'Tatuapé', 'São Paulo', 'SP'),
('01000-004', 104, 'Rua E', 'Pinheiros', 'São Paulo', 'SP'),
('02000-000', 200, 'Rua F', 'Centro', 'Rio de Janeiro', 'RJ'),
('02000-001', 201, 'Rua G', 'Copacabana', 'Rio de Janeiro', 'RJ'),
('02000-002', 202, 'Rua H', 'Tijuca', 'Rio de Janeiro', 'RJ'),
('03000-000', 300, 'Rua I', 'Água Verde', 'Curitiba', 'PR'),
('03000-001', 301, 'Rua J', 'Batel', 'Curitiba', 'PR');


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
INSERT INTO veiculo VALUES
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
INSERT INTO unidade VALUES
(1, 'Unidade SP Centro', 1, '01000-000', 100),
(2, 'Unidade SP Jardins', 2, '01000-001', 101),
(3, 'Unidade SP Moema', 3, '01000-002', 102),
(4, 'Unidade RJ Centro', 4, '02000-000', 200),
(5, 'Unidade RJ Copacabana', 5, '02000-001', 201),
(6, 'Unidade RJ Tijuca', 6, '02000-002', 202),
(7, 'Unidade PR Água Verde', 7, '03000-000', 300),
(8, 'Unidade PR Batel', 8, '03000-001', 301),
(9, 'Unidade SP Tatuapé', 9, '01000-003', 103),
(10, 'Unidade SP Pinheiros', 10, '01000-004', 104);


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
INSERT INTO comprador VALUES
('11111111111', 'Marcelo Pinto', '1990-05-10', NULL, 1, '01000-000', 100),
('22222222222', 'Empresa XPTO', NULL, 'Jorge Mendes', 2, '01000-001', 101),
('33333333333', 'Cláudia Gomes', '1985-12-01', NULL, 3, '01000-002', 102),
('44444444444', 'Lucas Andrade', '1993-04-17', NULL, 4, '02000-000', 200),
('55555555555', 'Bruna Costa', '1991-10-12', NULL, 5, '02000-001', 201),
('66666666666', 'Empresa ABC Ltda', NULL, 'Fernanda Silva', 6, '02000-002', 202),
('77777777777', 'Tiago Vieira', '1989-03-08', NULL, 7, '03000-000', 300),
('88888888888', 'Renata Lopes', '1986-06-20', NULL, 8, '03000-001', 301),
('99999999999', 'Gabriel Santos', '1994-02-25', NULL, 9, '01000-003', 103),
('00000000000', 'Empresa Delta S/A', NULL, 'Carlos Tavares', 10, '01000-004', 104);


-- 8. VENDA
INSERT INTO venda (id_venda, valor_venda, forma_pagto, comissao, data_hora_compra, vendedor_id_vendedor, comprador_cpf_cnpj_comprador, veiculo_renavam, unidade_id_unidade) VALUES
(1, 95000.00, 'À vista', 5000.00, '2025-01-15 10:30:00', 1, '11111111111', 'RENAVAM001', 1),
(2, 121000.00, 'Financiamento', 6000.00, '2025-02-01 14:45:00', 2, '22222222222', 'RENAVAM002', 2),
(3, 58000.00, 'À vista', 4000.00, '2025-02-20 09:15:00', 3, '33333333333', 'RENAVAM003', 3),
(4, 41000.00, 'Cartão', 2000.00, '2025-03-03 16:00:00', 4, '44444444444', 'RENAVAM004', 4),
(5, 76500.00, 'À vista', 3000.00, '2025-03-10 11:10:00', 5, '55555555555', 'RENAVAM005', 5),
(6, 84000.00, 'Financiamento', 4500.00, '2025-03-21 13:40:00', 6, '66666666666', 'RENAVAM006', 6),
(7, 109000.00, 'Cartão', 5000.00, '2025-04-01 17:20:00', 7, '77777777777', 'RENAVAM007', 7),
(8, 205000.00, 'À vista', 8000.00, '2025-04-10 10:50:00', 8, '88888888888', 'RENAVAM008', 8),
(9, 46000.00, 'Financiamento', 2500.00, '2025-04-15 15:05:00', 9, '99999999999', 'RENAVAM009', 9),
(10, 70000.00, 'Cartão', 2700.00, '2025-04-20 12:00:00', 10, '00000000000', 'RENAVAM010', 10);

-- 8. VENDA
INSERT INTO historico_venda (valor_venda, forma_pagto, comissao, data_hora_compra, vendedor_id_vendedor, comprador_cpf_cnpj_comprador, veiculo_renavam, unidade_id_unidade) VALUES
(28000.0, 'À Vista', 1500.0, '2007-01-15 10:00:00', 1, '12345678900', 'RENAVAM011', 1),
(34000.0, 'Financiado', 1800.0, '2008-01-20 14:30:00', 2, '22345678900', 'RENAVAM012', 2),
(92000.0, 'À Vista', 4000.0, '2009-02-01 09:15:00', 3, '32345678900', 'RENAVAM013', 3),
(26000.0, 'Financiado', 1300.0, '2010-02-10 11:45:00', 4, '42345678900', 'RENAVAM014', 4),
(41000.0, 'À Vista', 2000.0, '2011-02-15 16:00:00', 5, '52345678900', 'RENAVAM015', 5),
(57000.0, 'Cartão', 2800.0, '2012-03-03 13:20:00', 6, '62345678900', 'RENAVAM016', 6),
(118000.0, 'À Vista', 5000.0, '2013-03-10 15:10:00', 7, '72345678900', 'RENAVAM017', 7),
(31000.0, 'Financiado', 1400.0, '2014-03-15 12:00:00', 8, '82345678900', 'RENAVAM018', 8),
(62000.0, 'À Vista', 2500.0, '2015-03-20 17:30:00', 9, '92345678900', 'RENAVAM019', 9),
(56000.0, 'Financiado', 2200.0, '2016-03-25 10:50:00', 10, '102345678900', 'RENAVAM020', 10);

