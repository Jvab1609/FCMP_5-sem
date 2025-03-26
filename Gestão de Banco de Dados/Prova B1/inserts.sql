USE concessionaria;
# marcas

INSERT INTO contato VALUES(1, '9999-9999', '9999-9999', 'contato@jeep.com.br');
INSERT INTO contato VALUES(2, '9999-9999', '9999-9999', 'contato@honda.com.br');
INSERT INTO contato VALUES(3, '9999-9999', '9999-9999', 'contato@fiat.com.br');
INSERT INTO contato VALUES(4, '9999-9999', '9999-9999', 'contato@citroen.com.br');
INSERT INTO contato VALUES(5, '9999-9999', '9999-9999', 'contato@byd.com.br');
INSERT INTO contato VALUES(6, '9999-9999', '9999-9999', 'contato@toyota.com.br');
INSERT INTO contato VALUES(7, '9999-9999', '9999-9999', 'contato@maserati.com');
INSERT INTO contato VALUES(8, '9999-9999', '9999-9999', 'contato@tesla.com');
INSERT INTO contato VALUES(9, '9999-9999', '9999-9999', 'contato@porsche.com');
INSERT INTO contato VALUES(10, '9999-9999', '9999-9999', 'contato@bmw.com');

INSERT INTO marca VALUES(null, "Jeep", "Nacional", 1);
INSERT INTO marca VALUES(null, "Honda", "Nacional", 2);
INSERT INTO marca VALUES(null, "Fiat", "Nacional", 3);
INSERT INTO marca VALUES(null, "Citroen", "Nacional", 4);
INSERT INTO marca VALUES(null, "BYD", "Nacional", 5);
INSERT INTO marca VALUES(null, "Toyota", "Nacional", 6);
INSERT INTO marca VALUES(null, "Maserati", "Importado", 7);
INSERT INTO marca VALUES(null, "Tesla", "Importado", 8);
INSERT INTO marca VALUES(null, "Porsche", "Importado", 9);
INSERT INTO marca VALUES(null, "BMW", "Importado", 10);

# veiculo

INSERT INTO veiculo VALUES('1234567890-x', '9BWHE21JX24060960', 'Renegade', 2020, 2019, 'Preto', 120, 'GBQ-6435', 5, 100000, 'Flex', 1);
INSERT INTO veiculo VALUES('1234567890-y', '9BWHE21JX24060960', 'Civic', 2020, 2005, 'Preto', 120, 'GBQ-6435', 5, 120000, 'Híbrido', 2);
INSERT INTO veiculo VALUES('1234567890-z', '9BWHE21JX24060960', 'Pulse', 2020, 2004, 'Preto', 120, 'GBQ-6435', 5, 70000, 'Flex', 3);
INSERT INTO veiculo VALUES('1234567890-a', '9BWHE21JX24060960', 'C3', 2020, 2007, 'Preto', 120, 'GBQ-6435', 5, 65000, 'Flex', 4);
INSERT INTO veiculo VALUES('1234567890-b', '9BWHE21JX24060960', 'Dolphin', 2023, 2019, 'Preto', 120, 'GBQ-6435', 5, 90000, 'Flex', 5);
INSERT INTO veiculo VALUES('1234567890-c', '9BWHE21JX24060960', 'Corolla', 2024, 2019, 'Preto', 120, 'GBQ-6435', 5, 130000, 'Flex', 6);
INSERT INTO veiculo VALUES('1234567890-d', '9BWHE21JX24060960', 'MC20', 2020, 2025, 'Preto', 120, 'GBQ-6435', 5, 600000, 'Flex', 7);
INSERT INTO veiculo VALUES('1234567890-e', '9BWHE21JX24060960', 'Model S', 2020, 2020, 'Preto', 120, 'GBQ-6435', 5, 500000, 'Elétrico', 8);
INSERT INTO veiculo VALUES('1234567890-f', '9BWHE21JX24060960', 'Cayenne', 2020, 2022, 'Preto', 120, 'GBQ-6435', 5, 1200000, 'Flex', 9);
INSERT INTO veiculo VALUES('1234567890-g', '9BWHE21JX24060960', '320i', 2020, 2023, 'Preto', 120, 'GBQ-6435', 5, 450000, 'Flex', 10);

# contatos e endereços genéricos. Vou reutilizar para economizar tempo

INSERT INTO contato VALUES(11, '9999-9999', '9999-9999', 'contato@mail.com.br');
INSERT INTO contato VALUES(12, '9999-9999', '9999-9999', 'contato@mail.com.br');
INSERT INTO contato VALUES(13, '9999-9999', '9999-9999', 'contato@mail.com.br');
INSERT INTO contato VALUES(14, '9999-9999', '9999-9999', 'contato@mail.com.br');
INSERT INTO contato VALUES(15, '9999-9999', '9999-9999', 'contato@mail.com.br');
INSERT INTO contato VALUES(16, '9999-9999', '9999-9999', 'contato@mail.com.br');
INSERT INTO contato VALUES(17, '9999-9999', '9999-9999', 'contato@mail.com.br');
INSERT INTO contato VALUES(18, '9999-9999', '9999-9999', 'contato@mail.com.br');
INSERT INTO contato VALUES(19, '9999-9999', '9999-9999', 'contato@mail.com.br');
INSERT INTO contato VALUES(20, '9999-9999', '9999-9999', 'contato@mail.com.br');

INSERT INTO endereco VALUES(1, '13030-680', 605, 'Rua', 'Bairro', 'Cidade', 'Estado');
INSERT INTO endereco VALUES(2, '13030-680', 605, 'Rua', 'Bairro', 'Cidade', 'Estado');
INSERT INTO endereco VALUES(3, '13030-680', 605, 'Rua', 'Bairro', 'Cidade', 'Estado');
INSERT INTO endereco VALUES(4, '13030-680', 605, 'Rua', 'Bairro', 'Cidade', 'Estado');
INSERT INTO endereco VALUES(5, '13030-680', 605, 'Rua', 'Bairro', 'Cidade', 'Estado');
INSERT INTO endereco VALUES(6, '13030-680', 605, 'Rua', 'Bairro', 'Cidade', 'Estado');
INSERT INTO endereco VALUES(7, '13030-680', 605, 'Rua', 'Bairro', 'Cidade', 'Estado');
INSERT INTO endereco VALUES(8, '13030-680', 605, 'Rua', 'Bairro', 'Cidade', 'Estado');
INSERT INTO endereco VALUES(9, '13030-680', 605, 'Rua', 'Bairro', 'Cidade', 'Estado');
INSERT INTO endereco VALUES(10, '13030-680', 605, 'Rua', 'Bairro', 'Cidade', 'Estado');

# comprador
INSERT INTO comprador VALUES('111.111.111-01', 'Nome', '1967-05-26', null, 1, 11);
INSERT INTO comprador VALUES('111.111.111-02', 'Nome', '1967-05-26', null, 2, 12);
INSERT INTO comprador VALUES('111.111.111-03', 'Nome', '1967-05-26', null, 3, 13);
INSERT INTO comprador VALUES('111.111.111-04', 'Nome', '1967-05-26', null, 4, 14);
INSERT INTO comprador VALUES('111.111.111-05', 'Nome', '1967-05-26', null, 5, 15);
INSERT INTO comprador VALUES('11.111.111/0001-06', 'Nome', '1967-05-26', 'Jorge', 6, 16);
INSERT INTO comprador VALUES('11.111.111/0001-07', 'Nome', '1967-05-26', 'Jorge', 7, 17);
INSERT INTO comprador VALUES('11.111.111/0001-08', 'Nome', '1967-05-26', 'Jorge', 8, 18);
INSERT INTO comprador VALUES('11.111.111/0001-09', 'Nome', '1967-05-26', 'Jorge', 9, 19);
INSERT INTO comprador VALUES('11.111.111/0001-10', 'Nome', '1967-05-26', 'Jorge', 10, 20);

# vendedor

INSERT INTO unidade VALUES(1, 'Matriz', 1, 11);
INSERT INTO unidade VALUES(2, 'Filial X', 2, 12);
INSERT INTO unidade VALUES(3, 'Filial X', 3, 13);
INSERT INTO unidade VALUES(4, 'Filial X', 4, 14);
INSERT INTO unidade VALUES(5, 'Filial X', 5, 15);
INSERT INTO unidade VALUES(6, 'Filial X', 6, 16);
INSERT INTO unidade VALUES(7, 'Filial X', 7, 17);
INSERT INTO unidade VALUES(8, 'Filial X', 8, 18);
INSERT INTO unidade VALUES(9, 'Filial X', 9, 19);
INSERT INTO unidade VALUES(10, 'Filial X', 10, 20);

INSERT INTO vendedor VALUES(1, 'Alberto', '1968-05-16', 11, 1);
INSERT INTO vendedor VALUES(2, 'Alberto', '1968-05-16', 12, 2);
INSERT INTO vendedor VALUES(3, 'Alberto', '1968-05-16', 13, 3);
INSERT INTO vendedor VALUES(4, 'Alberto', '1968-05-16', 14, 4);
INSERT INTO vendedor VALUES(5, 'Alberto', '1968-05-16', 15, 5);
INSERT INTO vendedor VALUES(6, 'Alberto', '1968-05-16', 16, 6);
INSERT INTO vendedor VALUES(7, 'Alberto', '1968-05-16', 17, 7);
INSERT INTO vendedor VALUES(8, 'Alberto', '1968-05-16', 18, 8);
INSERT INTO vendedor VALUES(9, 'Alberto', '1968-05-16', 19, 9);
INSERT INTO vendedor VALUES(10, 'Alberto', '1968-05-16', 20, 10);

# venda

INSERT INTO venda VALUES(1, 90000, 'Débito', 0.01, '2025-03-26 09:16:00', 1, 1, '1234567890-x');
INSERT INTO venda VALUES(2, 90000, 'Débito', 0.01, '2025-03-26 09:16:00', 2, 2, '1234567890-y');
INSERT INTO venda VALUES(3, 90000, 'Débito', 0.01, '2025-03-26 09:16:00', 3, 3, '1234567890-z');
INSERT INTO venda VALUES(4, 90000, 'Débito', 0.01, '2025-03-26 09:16:00', 4, 4, '1234567890-a');
INSERT INTO venda VALUES(5, 90000, 'Débito', 0.01, '2025-03-26 09:16:00', 5, 5, '1234567890-b');
INSERT INTO venda VALUES(6, 90000, 'Débito', 0.01, '2025-03-26 09:16:00', 6, 6, '1234567890-c');
INSERT INTO venda VALUES(7, 90000, 'Débito', 0.01, '2025-03-26 09:16:00', 7, 7, '1234567890-d');
INSERT INTO venda VALUES(8, 90000, 'Débito', 0.01, '2025-03-26 09:16:00', 8, 8, '1234567890-e');
INSERT INTO venda VALUES(9, 90000, 'Débito', 0.01, '2025-03-26 09:16:00', 9, 9, '1234567890-f');
INSERT INTO venda VALUES(10, 90000, 'Débito', 0.01, '2025-03-26 09:16:00', 10, 10, '1234567890-g');

