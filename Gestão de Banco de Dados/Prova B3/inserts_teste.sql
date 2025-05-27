INSERT INTO entregador VALUES (null, 'Jackson Five', '11111111111', '11111111111', null);
INSERT INTO endereco VALUES ('04534011', 123, 'Avenida Santo Amaro', 'Brooklin', 'São Paulo', 'SP', 1, null);
INSERT INTO telefone VALUES ('11111111111', 1, null, null);

INSERT INTO restaurante VALUES (null, 'Lelis Trattoria', '10.0', null, '4');
INSERT INTO endereco VALUES ('30140071', 456, 'Rua da Bahia', 'Lourdes', 'Belo Horizonte', 'MG', null, 1);
INSERT INTO telefone VALUES ('11111111112', null, 1, null);

INSERT INTO usuario VALUES (null, 'João Albergaria', '41682242870');
INSERT INTO endereco VALUES ('22250040', 789, 'Rua Voluntários da Pátria', 'Botafogo', 'Rio de Janeiro', 'RJ', null, null);
INSERT INTO usuario_has_endereco VALUES(null, 1, '22250040', 789);
INSERT INTO telefone VALUES ('19998160904', null, null, 1);

INSERT INTO prato VALUES (null, 45.0, 'Parmegiana de frango executiva', 'Deliciosa parmegiana de frango com arroz e fritas', 1);

INSERT INTO pedido VALUES (null, 'ENTREGUE', '2025-05-27 19:00:00', '2025-05-27 19:05:00', '2025-05-27 19:35:00', '2025-05-27 19:50:00', 1, 1, 1);
INSERT INTO pedido_has_prato VALUES (1, 1);
INSERT INTO pagamento VALUES (null, '2025-05-27 19:49:00', 'VR', '55.0', 1);
INSERT INTO avaliacao VALUES (null, 4.5, 5.0, 'Comida muito boa!', 1, 1);