USE clinica;

INSERT INTO endereco VALUES ('04534011', 123, 'Avenida Santo Amaro', 'Brooklin', 'São Paulo', 'SP');
INSERT INTO endereco VALUES ('30140071', 456, 'Rua da Bahia', 'Lourdes', 'Belo Horizonte', 'MG');
INSERT INTO endereco VALUES ('22250040', 789, 'Rua Voluntários da Pátria', 'Botafogo', 'Rio de Janeiro', 'RJ');
INSERT INTO endereco VALUES ('88015020', 321, 'Rua Conselheiro Mafra', 'Centro', 'Florianópolis', 'SC');
INSERT INTO endereco VALUES ('80010000', 654, 'Rua XV de Novembro', 'Centro', 'Curitiba', 'PR');

INSERT INTO unidade VALUES (1, 'Brooklin SP', '11999999999', '11333333333', '04534011', 123);
INSERT INTO unidade VALUES (2, 'Lourdes BH', '11999999999', '11333333333', '30140071', 456);
INSERT INTO unidade VALUES (3, 'Botafogo Rio', '11999999999', '11333333333', '22250040', 789);
INSERT INTO unidade VALUES (4, 'Centro Floripa', '11999999999', '11333333333', '88015020', 321);
INSERT INTO unidade VALUES (5, 'Centro Curitiba', '11999999999', '11333333333', '80010000', 654);

INSERT INTO vacina VALUES ('1', 'Vacina da Raiva', 365);
INSERT INTO vacina VALUES ('2', 'V8', 365);
INSERT INTO vacina VALUES ('3', 'V10', 365);
INSERT INTO vacina VALUES ('4', 'Vacina Antirrábica Felina', 365);
INSERT INTO vacina VALUES ('5', 'Tríplice Felina', 365);
INSERT INTO vacina VALUES ('6', 'Quádrupla Felina', 365);
INSERT INTO vacina VALUES ('7', 'Vacina contra Leptospirose', 180);
INSERT INTO vacina VALUES ('8', 'Vacina contra Giárdia', 180);
INSERT INTO vacina VALUES ('9', 'Vacina contra Tosse dos Canis', 365);
INSERT INTO vacina VALUES ('10', 'Vacina contra Leishmaniose', 365);
INSERT INTO vacina VALUES ('11', 'Vacina contra Hepatite Infecciosa Canina', 365);
INSERT INTO vacina VALUES ('12', 'Vacina contra Parvovirose', 365);
INSERT INTO vacina VALUES ('13', 'Vacina contra Coronavirose Canina', 365);
INSERT INTO vacina VALUES ('14', 'Vacina contra Calicivirose Felina', 365);
INSERT INTO vacina VALUES ('15', 'Vacina contra Panleucopenia Felina', 365);
INSERT INTO vacina VALUES ('16', 'Vacina contra Clamidiose Felina', 365);
INSERT INTO vacina VALUES ('17', 'Vacina contra Cinomose', 365);
INSERT INTO vacina VALUES ('18', 'Vacina contra Parainfluenza Canina', 365);
INSERT INTO vacina VALUES ('19', 'Vacina contra Bordetelose', 180);
INSERT INTO vacina VALUES ('20', 'Vacina contra Erliquiose', 180);

-- Unidade 1
INSERT INTO veterinario VALUES (1, 'Ricardo Pereira', 'Cirurgião Veterinário', 0, 'loginRicardo', sha1('senhaRicardo'), 1);
INSERT INTO veterinario VALUES (2, 'Mariana Souza', 'Clínico Geral', 0, 'loginMariana', sha1('senhaMariana'), 1);
INSERT INTO veterinario VALUES (3, 'Carlos Fernandes', 'Ortopedista Veterinário', 0, 'loginCarlos', sha1('senhaCarlos'), 1);
INSERT INTO veterinario VALUES (4, 'Ana Beatriz Lima', 'Dermatologista Veterinário', 0, 'loginAna', sha1('senhaAna'), 1);
INSERT INTO veterinario VALUES (5, 'Lucas Oliveira', 'Cardiologista Veterinário', 0, 'loginLucas', sha1('senhaLucas'), 1);
INSERT INTO veterinario VALUES (6, 'Fernanda Castro', 'Neurologista Veterinário', 0, 'loginFernanda', sha1('senhaFernanda'), 1);
INSERT INTO veterinario VALUES (7, 'Pedro Mendes', 'Oftalmologista Veterinário', 0, 'loginPedro', sha1('senhaPedro'), 1);
INSERT INTO veterinario VALUES (8, 'Juliana Ribeiro', 'Especialista em Comportamento Animal', 0, 'loginJuliana', sha1('senhaJuliana'), 1);
INSERT INTO veterinario VALUES (9, 'Bruno Almeida', 'Especialista em Banho e Tosa', 0, 'loginBruno', sha1('senhaBruno'), 1);
INSERT INTO veterinario VALUES (10, 'Cláudia Nogueira', 'Esteticista Animal', 0, 'loginClaudia', sha1('senhaClaudia'), 1);

-- Unidade 2
INSERT INTO veterinario VALUES (11, 'Gabriel Martins', 'Cirurgião Veterinário', 0, 'loginGabriel', sha1('senhaGabriel'), 2);
INSERT INTO veterinario VALUES (12, 'Patrícia Silva', 'Clínico Geral', 0, 'loginPatricia', sha1('senhaPatricia'), 2);
INSERT INTO veterinario VALUES (13, 'Renato Gomes', 'Ortopedista Veterinário', 0, 'loginRenato', sha1('senhaRenato'), 2);
INSERT INTO veterinario VALUES (14, 'Bianca Carvalho', 'Dermatologista Veterinário', 0, 'loginBianca', sha1('senhaBianca'), 2);
INSERT INTO veterinario VALUES (15, 'Thiago Rocha', 'Cardiologista Veterinário', 0, 'loginThiago', sha1('senhaThiago'), 2);
INSERT INTO veterinario VALUES (16, 'Larissa Pinto', 'Neurologista Veterinário', 0, 'loginLarissa', sha1('senhaLarissa'), 2);
INSERT INTO veterinario VALUES (17, 'Diego Costa', 'Oftalmologista Veterinário', 0, 'loginDiego', sha1('senhaDiego'), 2);
INSERT INTO veterinario VALUES (18, 'Isabela Fernandes', 'Especialista em Comportamento Animal', 0, 'loginIsabela', sha1('senhaIsabela'), 2);
INSERT INTO veterinario VALUES (19, 'Rodrigo Barros', 'Especialista em Banho e Tosa', 0, 'loginRodrigo', sha1('senhaRodrigo'), 2);
INSERT INTO veterinario VALUES (20, 'Camila Azevedo', 'Esteticista Animal', 0, 'loginCamila', sha1('senhaCamila'), 2);

-- Unidade 3
INSERT INTO veterinario VALUES (21, 'Vinícius Almeida', 'Cirurgião Veterinário', 0, 'loginVinicius', sha1('senhaVinicius'), 3);
INSERT INTO veterinario VALUES (22, 'Tatiane Ramos', 'Clínico Geral', 0, 'loginTatiane', sha1('senhaTatiane'), 3);
INSERT INTO veterinario VALUES (23, 'Eduardo Moreira', 'Ortopedista Veterinário', 0, 'loginEduardo', sha1('senhaEduardo'), 3);
INSERT INTO veterinario VALUES (24, 'Roberta Lima', 'Dermatologista Veterinário', 0, 'loginRoberta', sha1('senhaRoberta'), 3);
INSERT INTO veterinario VALUES (25, 'Marcelo Antunes', 'Cardiologista Veterinário', 0, 'loginMarcelo', sha1('senhaMarcelo'), 3);
INSERT INTO veterinario VALUES (26, 'Priscila Duarte', 'Neurologista Veterinário', 0, 'loginPriscila', sha1('senhaPriscila'), 3);
INSERT INTO veterinario VALUES (27, 'Fábio Correia', 'Oftalmologista Veterinário', 0, 'loginFabio', sha1('senhaFabio'), 3);
INSERT INTO veterinario VALUES (28, 'Amanda Martins', 'Especialista em Comportamento Animal', 0, 'loginAmanda', sha1('senhaAmanda'), 3);
INSERT INTO veterinario VALUES (29, 'Rafael Sousa', 'Especialista em Banho e Tosa', 0, 'loginRafael', sha1('senhaRafael'), 3);
INSERT INTO veterinario VALUES (30, 'Daniela Freitas', 'Esteticista Animal', 0, 'loginDaniela', sha1('senhaDaniela'), 3);

-- Unidade 4
INSERT INTO veterinario VALUES (31, 'Bruna Assis', 'Anestesiologista Veterinário', 0, 'loginBruna', sha1('senhaBruna'), 4);
INSERT INTO veterinario VALUES (32, 'André Barbosa', 'Oncologista Veterinário', 0, 'loginAndre', sha1('senhaAndre'), 4);
INSERT INTO veterinario VALUES (33, 'Simone Vieira', 'Endocrinologista Veterinário', 0, 'loginSimone', sha1('senhaSimone'), 4);
INSERT INTO veterinario VALUES (34, 'Gustavo Batista', 'Especialista em Animais Silvestres', 0, 'loginGustavo', sha1('senhaGustavo'), 4);
INSERT INTO veterinario VALUES (35, 'Débora Monteiro', 'Especialista em Reprodução Animal', 0, 'loginDebora', sha1('senhaDebora'), 4);
INSERT INTO veterinario VALUES (36, 'Matheus Peixoto', 'Nutricionista Veterinário', 0, 'loginMatheus', sha1('senhaMatheus'), 5);
INSERT INTO veterinario VALUES (37, 'Aline Costa', 'Nefrologista Veterinário', 0, 'loginAline', sha1('senhaAline'), 5);
INSERT INTO veterinario VALUES (38, 'Otávio Nunes', 'Infectologista Veterinário', 0, 'loginOtavio', sha1('senhaOtavio'), 5);
INSERT INTO veterinario VALUES (39, 'Elaine Castro', 'Patologista Veterinário', 0, 'loginElaine', sha1('senhaElaine'), 5);
INSERT INTO veterinario VALUES (40, 'Leandro Rezende', 'Especialista em Fisioterapia Animal', 0, 'loginLeandro', sha1('senhaLeandro'), 5);


INSERT INTO servico VALUES (1, 'Banho', '60.0', 'Inclui shampoo, condicionador e secagem');
INSERT INTO servico VALUES (2, 'Tosa Higiênica', '50.0', 'Apenas patas, barriga e região íntima');
INSERT INTO servico VALUES (3, 'Tosa Completa', '90.0', 'Tosa padrão da raça ou conforme solicitado');
INSERT INTO servico VALUES (4, 'Consulta Veterinária', '120.0', 'Consulta geral com clínico veterinário');
INSERT INTO servico VALUES (5, 'Vacinação', '80.0', 'Aplicação de vacina conforme protocolo médico');
INSERT INTO servico VALUES (6, 'Cirurgia', '500.0', 'Procedimento cirúrgico sob consulta');
INSERT INTO servico VALUES (7, 'Exames Laboratoriais', '150.0', 'Coleta e análise de sangue, urina e fezes');
INSERT INTO servico VALUES (8, 'Tratamento Dermatológico', '200.0', 'Consulta e tratamento para problemas de pele');
INSERT INTO servico VALUES (9, 'Terapia Comportamental', '180.0', 'Sessão com especialista em comportamento animal');
INSERT INTO servico VALUES (10, 'Emergência 24h', '300.0', 'Atendimento emergencial a qualquer horário');
INSERT INTO servico VALUES (11, 'Fisioterapia Animal', '250.0', 'Sessões para reabilitação física de animais');
INSERT INTO servico VALUES (12, 'Consulta Cardiológica', '220.0', 'Avaliação e acompanhamento cardíaco veterinário');
INSERT INTO servico VALUES (13, 'Consulta Neurológica', '240.0', 'Diagnóstico e tratamento de distúrbios neurológicos');
INSERT INTO servico VALUES (14, 'Consulta Oftalmológica', '200.0', 'Avaliação da visão e tratamento ocular');
INSERT INTO servico VALUES (15, 'Consulta Dermatológica', '190.0', 'Consulta especializada em doenças de pele');
INSERT INTO servico VALUES (16, 'Hotelzinho', '100.0', 'Hospedagem diária para cães e gatos');
INSERT INTO servico VALUES (17, 'Daycare', '80.0', 'Creche para animais durante o dia');
INSERT INTO servico VALUES (18, 'Banho Medicamentoso', '70.0', 'Banho terapêutico com produtos específicos');
INSERT INTO servico VALUES (19, 'Consulta Nutricional', '150.0', 'Orientação alimentar e dietética para pets');
INSERT INTO servico VALUES (20, 'Acupuntura Veterinária', '260.0', 'Sessão de acupuntura para tratamentos diversos');



-- Unidade 1 - Brooklin SP
INSERT INTO unidade_has_servico VALUES (1, 1, 9);
INSERT INTO unidade_has_servico VALUES (1, 2, 8);
INSERT INTO unidade_has_servico VALUES (1, 3, 8);
INSERT INTO unidade_has_servico VALUES (1, 4, 6);
INSERT INTO unidade_has_servico VALUES (1, 5, 9);
INSERT INTO unidade_has_servico VALUES (1, 6, 2);
INSERT INTO unidade_has_servico VALUES (1, 7, 4);
INSERT INTO unidade_has_servico VALUES (1, 8, 4);
INSERT INTO unidade_has_servico VALUES (1, 9, 3);
INSERT INTO unidade_has_servico VALUES (1, 10, 2);
INSERT INTO unidade_has_servico VALUES (1, 11, 2);
INSERT INTO unidade_has_servico VALUES (1, 12, 3);
INSERT INTO unidade_has_servico VALUES (1, 13, 2);
INSERT INTO unidade_has_servico VALUES (1, 14, 3);
INSERT INTO unidade_has_servico VALUES (1, 15, 3);
INSERT INTO unidade_has_servico VALUES (1, 16, 7);
INSERT INTO unidade_has_servico VALUES (1, 17, 7);
INSERT INTO unidade_has_servico VALUES (1, 18, 6);
INSERT INTO unidade_has_servico VALUES (1, 19, 3);
INSERT INTO unidade_has_servico VALUES (1, 20, 2);

-- Unidade 2 - Lourdes BH
INSERT INTO unidade_has_servico VALUES (2, 1, 8);
INSERT INTO unidade_has_servico VALUES (2, 2, 7);
INSERT INTO unidade_has_servico VALUES (2, 3, 7);
INSERT INTO unidade_has_servico VALUES (2, 4, 6);
INSERT INTO unidade_has_servico VALUES (2, 5, 8);
INSERT INTO unidade_has_servico VALUES (2, 6, 2);
INSERT INTO unidade_has_servico VALUES (2, 7, 4);
INSERT INTO unidade_has_servico VALUES (2, 8, 5);
INSERT INTO unidade_has_servico VALUES (2, 9, 3);
INSERT INTO unidade_has_servico VALUES (2, 10, 2);
INSERT INTO unidade_has_servico VALUES (2, 11, 2);
INSERT INTO unidade_has_servico VALUES (2, 12, 4);
INSERT INTO unidade_has_servico VALUES (2, 13, 3);
INSERT INTO unidade_has_servico VALUES (2, 14, 3);
INSERT INTO unidade_has_servico VALUES (2, 15, 4);
INSERT INTO unidade_has_servico VALUES (2, 16, 6);
INSERT INTO unidade_has_servico VALUES (2, 17, 6);
INSERT INTO unidade_has_servico VALUES (2, 18, 6);
INSERT INTO unidade_has_servico VALUES (2, 19, 4);
INSERT INTO unidade_has_servico VALUES (2, 20, 2);

-- Unidade 3 - Botafogo Rio
INSERT INTO unidade_has_servico VALUES (3, 1, 9);
INSERT INTO unidade_has_servico VALUES (3, 2, 8);
INSERT INTO unidade_has_servico VALUES (3, 3, 9);
INSERT INTO unidade_has_servico VALUES (3, 4, 5);
INSERT INTO unidade_has_servico VALUES (3, 5, 8);
INSERT INTO unidade_has_servico VALUES (3, 6, 3);
INSERT INTO unidade_has_servico VALUES (3, 7, 5);
INSERT INTO unidade_has_servico VALUES (3, 8, 4);
INSERT INTO unidade_has_servico VALUES (3, 9, 4);
INSERT INTO unidade_has_servico VALUES (3, 10, 2);
INSERT INTO unidade_has_servico VALUES (3, 11, 3);
INSERT INTO unidade_has_servico VALUES (3, 12, 4);
INSERT INTO unidade_has_servico VALUES (3, 13, 3);
INSERT INTO unidade_has_servico VALUES (3, 14, 4);
INSERT INTO unidade_has_servico VALUES (3, 15, 4);
INSERT INTO unidade_has_servico VALUES (3, 16, 8);
INSERT INTO unidade_has_servico VALUES (3, 17, 8);
INSERT INTO unidade_has_servico VALUES (3, 18, 7);
INSERT INTO unidade_has_servico VALUES (3, 19, 4);
INSERT INTO unidade_has_servico VALUES (3, 20, 3);

-- Unidade 4 - Centro Floripa
INSERT INTO unidade_has_servico VALUES (4, 1, 7);
INSERT INTO unidade_has_servico VALUES (4, 2, 7);
INSERT INTO unidade_has_servico VALUES (4, 3, 6);
INSERT INTO unidade_has_servico VALUES (4, 4, 5);
INSERT INTO unidade_has_servico VALUES (4, 5, 7);
INSERT INTO unidade_has_servico VALUES (4, 6, 2);
INSERT INTO unidade_has_servico VALUES (4, 7, 4);
INSERT INTO unidade_has_servico VALUES (4, 8, 3);
INSERT INTO unidade_has_servico VALUES (4, 9, 3);
INSERT INTO unidade_has_servico VALUES (4, 10, 1);
INSERT INTO unidade_has_servico VALUES (4, 11, 2);
INSERT INTO unidade_has_servico VALUES (4, 12, 3);
INSERT INTO unidade_has_servico VALUES (4, 13, 2);
INSERT INTO unidade_has_servico VALUES (4, 14, 3);
INSERT INTO unidade_has_servico VALUES (4, 15, 3);
INSERT INTO unidade_has_servico VALUES (4, 16, 6);
INSERT INTO unidade_has_servico VALUES (4, 17, 6);
INSERT INTO unidade_has_servico VALUES (4, 18, 6);
INSERT INTO unidade_has_servico VALUES (4, 19, 3);
INSERT INTO unidade_has_servico VALUES (4, 20, 2);

-- Unidade 5 - Centro Curitiba
INSERT INTO unidade_has_servico VALUES (5, 1, 9);
INSERT INTO unidade_has_servico VALUES (5, 2, 9);
INSERT INTO unidade_has_servico VALUES (5, 3, 8);
INSERT INTO unidade_has_servico VALUES (5, 4, 6);
INSERT INTO unidade_has_servico VALUES (5, 5, 9);
INSERT INTO unidade_has_servico VALUES (5, 6, 3);
INSERT INTO unidade_has_servico VALUES (5, 7, 5);
INSERT INTO unidade_has_servico VALUES (5, 8, 4);
INSERT INTO unidade_has_servico VALUES (5, 9, 4);
INSERT INTO unidade_has_servico VALUES (5, 10, 2);
INSERT INTO unidade_has_servico VALUES (5, 11, 3);
INSERT INTO unidade_has_servico VALUES (5, 12, 4);
INSERT INTO unidade_has_servico VALUES (5, 13, 3);
INSERT INTO unidade_has_servico VALUES (5, 14, 3);
INSERT INTO unidade_has_servico VALUES (5, 15, 4);
INSERT INTO unidade_has_servico VALUES (5, 16, 7);
INSERT INTO unidade_has_servico VALUES (5, 17, 7);
INSERT INTO unidade_has_servico VALUES (5, 18, 7);
INSERT INTO unidade_has_servico VALUES (5, 19, 4);
INSERT INTO unidade_has_servico VALUES (5, 20, 3);


