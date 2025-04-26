USE clinica;

INSERT INTO tutor VALUES ('12345678909', 'Jorge Alberto', '1972-02-13', 'jorge.alberto@gmail.com', 0, sha1('senhaJorge'));
INSERT INTO tutor VALUES ('23456789012', 'Maria Souza', '1985-11-21', 'maria.souza@gmail.com', 0, sha1('senhaMaria'));
INSERT INTO tutor VALUES ('34567890123', 'Carlos Pereira', '1990-05-16', 'carlos.pereira@gmail.com', 0, sha1('senhaCarlos'));
INSERT INTO tutor VALUES ('45678901234', 'Ana Costa', '1982-08-30', 'ana.costa@gmail.com', 0, sha1('senhaAna'));
INSERT INTO tutor VALUES ('56789012345', 'Roberto Lima', '1978-01-12', 'roberto.lima@gmail.com', 0, sha1('senhaRoberto'));
INSERT INTO tutor VALUES ('67890123456', 'Fernanda Silva', '1995-07-19', 'fernanda.silva@gmail.com', 0, sha1('senhaFernanda'));
INSERT INTO tutor VALUES ('78901234567', 'Paulo Oliveira', '1988-09-05', 'paulo.oliveira@gmail.com', 0, sha1('senhaPaulo'));
INSERT INTO tutor VALUES ('89012345678', 'Juliana Santos', '1993-03-25', 'juliana.santos@gmail.com', 0, sha1('senhaJuliana'));
INSERT INTO tutor VALUES ('90123456789', 'Luís Fernandes', '1980-12-18', 'luis.fernandes@gmail.com', 0, sha1('senhaLuis'));
INSERT INTO tutor VALUES ('01234567890', 'Cláudia Rocha', '1997-06-22', 'claudia.rocha@gmail.com', 0, sha1('senhaClaudia'));


INSERT INTO telefone VALUES ('19998160904', '12345678909');
INSERT INTO telefone VALUES ('19987654321', '23456789012');
INSERT INTO telefone VALUES ('19996543210', '34567890123');
INSERT INTO telefone VALUES ('19995432109', '45678901234');
INSERT INTO telefone VALUES ('19994321098', '56789012345');
INSERT INTO telefone VALUES ('19993210987', '67890123456');
INSERT INTO telefone VALUES ('19992109876', '78901234567');
INSERT INTO telefone VALUES ('19991098765', '89012345678');
INSERT INTO telefone VALUES ('19990087654', '90123456789');
INSERT INTO telefone VALUES ('19988976543', '01234567890');

INSERT INTO endereco VALUES ('13030680', 605, 'Rua Joao Felipe Xavier da Silva', 'São Bernardo', 'Campinas', 'SP');
INSERT INTO endereco VALUES ('01001000', 100, 'Praça da Sé', 'Sé', 'São Paulo', 'SP');
INSERT INTO endereco VALUES ('20040002', 50, 'Avenida Rio Branco', 'Centro', 'Rio de Janeiro', 'RJ');
INSERT INTO endereco VALUES ('30130010', 1200, 'Avenida Afonso Pena', 'Centro', 'Belo Horizonte', 'MG');
INSERT INTO endereco VALUES ('40020000', 75, 'Rua Chile', 'Centro Histórico', 'Salvador', 'BA');
INSERT INTO endereco VALUES ('60060090', 230, 'Avenida Dom Manuel', 'Centro', 'Fortaleza', 'CE');
INSERT INTO endereco VALUES ('70040900', 15, 'Esplanada dos Ministérios', 'Zona Cívico-Administrativa', 'Brasília', 'DF');
INSERT INTO endereco VALUES ('80010010', 300, 'Rua XV de Novembro', 'Centro', 'Curitiba', 'PR');
INSERT INTO endereco VALUES ('90010000', 500, 'Avenida Borges de Medeiros', 'Centro Histórico', 'Porto Alegre', 'RS');
INSERT INTO endereco VALUES ('95020040', 180, 'Rua Sinimbu', 'Centro', 'Caxias do Sul', 'RS');

INSERT INTO endereco_has_tutor VALUES ('13030680', '12345678909');
INSERT INTO endereco_has_tutor VALUES ('01001000', '23456789012');
INSERT INTO endereco_has_tutor VALUES ('20040002', '34567890123');
INSERT INTO endereco_has_tutor VALUES ('30130010', '45678901234');
INSERT INTO endereco_has_tutor VALUES ('40020000', '56789012345');
INSERT INTO endereco_has_tutor VALUES ('60060090', '67890123456');
INSERT INTO endereco_has_tutor VALUES ('70040900', '78901234567');
INSERT INTO endereco_has_tutor VALUES ('80010010', '89012345678');
INSERT INTO endereco_has_tutor VALUES ('90010000', '90123456789');
INSERT INTO endereco_has_tutor VALUES ('95020040', '01234567890');

INSERT INTO animal VALUES ('1', 'Betinho', '2022-04-02', 'Cachorro', 'Border-Collie', 'Médio porte', '30.0', 'Nenhuma observação', 0);
INSERT INTO animal VALUES ('2', 'Mia', '2021-06-15', 'Gato', 'Siamês', 'Pequeno porte', '5.0', 'Gosta de subir em móveis', 0);
INSERT INTO animal VALUES ('3', 'Thor', '2020-12-10', 'Cachorro', 'Golden Retriever', 'Grande porte', '35.0', 'Muito dócil', 0);
INSERT INTO animal VALUES ('4', 'Luna', '2023-01-20', 'Gato', 'Persa', 'Pequeno porte', '4.5', 'Pelagem longa', 0);
INSERT INTO animal VALUES ('5', 'Rex', '2019-09-05', 'Cachorro', 'Pastor Alemão', 'Grande porte', '40.0', 'Adestrado', 0);
INSERT INTO animal VALUES ('6', 'Mel', '2022-11-11', 'Cachorro', 'Poodle', 'Pequeno porte', '6.0', 'Muito brincalhona', 0);
INSERT INTO animal VALUES ('7', 'Bolinha', '2021-03-30', 'Coelho', 'Mini Lop', 'Pequeno porte', '2.5', 'Muito dócil', 0);
INSERT INTO animal VALUES ('8', 'Zeca', '2018-07-21', 'Papagaio', 'Amazona aestiva', 'Médio porte', '0.9', 'Imita sons', 0);
INSERT INTO animal VALUES ('9', 'Pingo', '2020-05-14', 'Cachorro', 'Shih Tzu', 'Pequeno porte', '7.0', 'Precisa de tosa frequente', 0);
INSERT INTO animal VALUES ('10', 'Nina', '2019-02-28', 'Gato', 'Maine Coon', 'Médio porte', '6.5', 'Muito sociável', 0);

INSERT INTO tutor_has_animal VALUES ('12345678909', '1', 1);
INSERT INTO tutor_has_animal VALUES ('23456789012', '2', 1);
INSERT INTO tutor_has_animal VALUES ('34567890123', '3', 1);
INSERT INTO tutor_has_animal VALUES ('45678901234', '4', 1);
INSERT INTO tutor_has_animal VALUES ('56789012345', '5', 1);
INSERT INTO tutor_has_animal VALUES ('67890123456', '6', 1);
INSERT INTO tutor_has_animal VALUES ('78901234567', '7', 1);
INSERT INTO tutor_has_animal VALUES ('89012345678', '8', 1);
INSERT INTO tutor_has_animal VALUES ('90123456789', '9', 1);
INSERT INTO tutor_has_animal VALUES ('01234567890', '10', 1);

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

INSERT INTO animal_has_vacina VALUES ('1', '1', '2025-03-24', '2026-03-24', 'Sem observações');
INSERT INTO animal_has_vacina VALUES ('1', '2', '2025-03-24', '2026-03-24', 'Sem observações');

INSERT INTO animal_has_vacina VALUES ('2', '4', '2025-02-15', '2026-02-15', 'Dose anual recomendada');
INSERT INTO animal_has_vacina VALUES ('2', '5', '2025-02-15', '2026-02-15', 'Nenhuma observação');

INSERT INTO animal_has_vacina VALUES ('3', '1', '2025-01-10', '2026-01-10', 'Reforço necessário anualmente');
INSERT INTO animal_has_vacina VALUES ('3', '3', '2025-01-10', '2026-01-10', 'Sem observações');

INSERT INTO animal_has_vacina VALUES ('4', '4', '2025-04-05', '2026-04-05', 'Reforço essencial para gatos');
INSERT INTO animal_has_vacina VALUES ('4', '6', '2025-04-05', '2026-04-05', 'Proteção contra vírus felinos');

INSERT INTO animal_has_vacina VALUES ('5', '1', '2025-05-12', '2026-05-12', 'Importante para prevenção de raiva');
INSERT INTO animal_has_vacina VALUES ('5', '7', '2025-05-12', '2025-11-08', 'Recomenda-se revacinação semestral');

INSERT INTO animal_has_vacina VALUES ('6', '2', '2025-06-20', '2026-06-20', 'Dose reforçada');
INSERT INTO animal_has_vacina VALUES ('6', '8', '2025-06-20', '2025-12-17', 'Proteção contra giárdia');

INSERT INTO animal_has_vacina VALUES ('7', '9', '2025-07-10', '2026-07-10', 'Prevenção contra tosse dos canis');
INSERT INTO animal_has_vacina VALUES ('7', '10', '2025-07-10', '2026-07-10', 'Proteção contra leishmaniose');

INSERT INTO animal_has_vacina VALUES ('8', '1', '2025-08-25', '2026-08-25', 'Nenhuma observação');
INSERT INTO animal_has_vacina VALUES ('8', '3', '2025-08-25', '2026-08-25', 'Reforço anual');

INSERT INTO animal_has_vacina VALUES ('9', '5', '2025-09-14', '2026-09-14', 'Proteção essencial para felinos');
INSERT INTO animal_has_vacina VALUES ('9', '6', '2025-09-14', '2026-09-14', 'Vacinação completa para gatos');

INSERT INTO animal_has_vacina VALUES ('10', '7', '2025-10-05', '2026-04-03', 'Reaplicação recomendada semestralmente');
INSERT INTO animal_has_vacina VALUES ('10', '8', '2025-10-05', '2026-04-03', 'Proteção contra parasitas intestinais');


INSERT INTO veterinario VALUES ('1968001', 'Ricardo Pereira', 'Cirurgião Veterinário', 0, sha1('senhaRicardo'));
INSERT INTO veterinario VALUES ('1985023', 'Mariana Souza', 'Clínico Geral', 0, sha1('senhaMariana'));
INSERT INTO veterinario VALUES ('1990125', 'Carlos Fernandes', 'Ortopedista Veterinário', 0, sha1('senhaCarlos'));
INSERT INTO veterinario VALUES ('1978054', 'Ana Beatriz Lima', 'Dermatologista Veterinário', 0, sha1('senhaAna'));
INSERT INTO veterinario VALUES ('2000012', 'Lucas Oliveira', 'Cardiologista Veterinário', 0, sha1('senhaLucas'));
INSERT INTO veterinario VALUES ('1995078', 'Fernanda Castro', 'Neurologista Veterinário', 0, sha1('senhaFernanda'));
INSERT INTO veterinario VALUES ('1988110', 'Pedro Mendes', 'Oftalmologista Veterinário', 0, sha1('senhaPedro'));
INSERT INTO veterinario VALUES ('1973022', 'Juliana Ribeiro', 'Especialista em Comportamento Animal', 0, sha1('senhaJuliana'));
INSERT INTO veterinario VALUES ('1999099', 'Bruno Almeida', 'Especialista em Banho e Tosa', 0, sha1('senhaBruno'));
INSERT INTO veterinario VALUES ('2003045', 'Cláudia Nogueira', 'Esteticista Animal', 0, sha1('senhaClaudia'));


INSERT INTO servico VALUES ('1', 'Banho', '60.0', 'Inclui shampoo, condicionador e secagem');
INSERT INTO servico VALUES ('2', 'Tosa Higiênica', '50.0', 'Apenas patas, barriga e região íntima');
INSERT INTO servico VALUES ('3', 'Tosa Completa', '90.0', 'Tosa padrão da raça ou conforme solicitado');
INSERT INTO servico VALUES ('4', 'Consulta Veterinária', '120.0', 'Consulta geral com clínico veterinário');
INSERT INTO servico VALUES ('5', 'Vacinação', '80.0', 'Aplicação de vacina conforme protocolo médico');
INSERT INTO servico VALUES ('6', 'Cirurgia', '500.0', 'Procedimento cirúrgico sob consulta');
INSERT INTO servico VALUES ('7', 'Exames Laboratoriais', '150.0', 'Coleta e análise de sangue, urina e fezes');
INSERT INTO servico VALUES ('8', 'Tratamento Dermatológico', '200.0', 'Consulta e tratamento para problemas de pele');
INSERT INTO servico VALUES ('9', 'Terapia Comportamental', '180.0', 'Sessão com especialista em comportamento animal');
INSERT INTO servico VALUES ('10', 'Emergência 24h', '300.0', 'Atendimento emergencial a qualquer horário');

INSERT INTO consulta VALUES ('1', '2025-04-01 14:00:00', '2025-04-01 15:00:00', 'Banho realizado com sucesso', '1', '1999099', '1');
INSERT INTO consulta VALUES ('2', '2025-04-02 10:00:00', '2025-04-02 11:00:00', 'Consulta para check-up geral', '2', '1985023', '4');
INSERT INTO consulta VALUES ('3', '2025-04-03 16:30:00', '2025-04-03 17:00:00', 'Tosa higiênica realizada sem intercorrências', '3', '1999099', '2');
INSERT INTO consulta VALUES ('4', '2025-04-04 09:00:00', '2025-04-04 09:30:00', 'Vacinação contra raiva aplicada', '4', '1985023', '5');
INSERT INTO consulta VALUES ('5', '2025-04-05 15:00:00', '2025-04-05 16:30:00', 'Cirurgia realizada com sucesso', '5', '1968001', '6');
INSERT INTO consulta VALUES ('6', '2025-04-06 11:00:00', '2025-04-06 12:00:00', 'Exames laboratoriais coletados', '6', '2003045', '7');
INSERT INTO consulta VALUES ('7', '2025-04-07 13:00:00', '2025-04-07 14:00:00', 'Tratamento dermatológico para alergia', '7', '1978054', '8');
INSERT INTO consulta VALUES ('8', '2025-04-08 17:00:00', '2025-04-08 18:00:00', 'Sessão de terapia comportamental realizada', '8', '1973022', '9');
INSERT INTO consulta VALUES ('9', '2025-04-09 20:30:00', '2025-04-09 21:00:00', 'Atendimento emergencial para intoxicação', '9', '1985023', '10');
INSERT INTO consulta VALUES ('10', '2025-04-10 08:00:00', '2025-04-10 09:00:00', 'Tosa completa feita conforme solicitado', '10', '1999099', '3');

INSERT INTO nota VALUES ('1', '66.0', 'Débito', 'Banho realizado', '12345678909', '1', '1', '1999099', '1');
INSERT INTO nota VALUES ('2', '120.0', 'Crédito', 'Consulta veterinária check-up', '23456789012', '2', '2', '1985023', '4');
INSERT INTO nota VALUES ('3', '55.0', 'Dinheiro', 'Tosa higiênica realizada', '34567890123', '3', '3', '1999099', '2');
INSERT INTO nota VALUES ('4', '80.0', 'Débito', 'Vacinação contra raiva aplicada', '45678901234', '4', '4', '1985023', '5');
INSERT INTO nota VALUES ('5', '600.0', 'Crédito', 'Cirurgia realizada com sucesso', '56789012345', '5', '5', '1968001', '6');
INSERT INTO nota VALUES ('6', '165.0', 'Dinheiro', 'Exames laboratoriais coletados', '67890123456', '6', '6', '2003045', '7');
INSERT INTO nota VALUES ('7', '220.0', 'Crédito', 'Tratamento dermatológico para alergia', '78901234567', '7', '7', '1978054', '8');
INSERT INTO nota VALUES ('8', '198.0', 'Débito', 'Sessão de terapia comportamental', '89012345678', '8', '8', '1973022', '9');
INSERT INTO nota VALUES ('9', '360.0', 'Dinheiro', 'Emergência para intoxicação', '90123456789', '9', '9', '1985023', '10');
INSERT INTO nota VALUES ('10', '99.0', 'Crédito', 'Tosa completa feita conforme solicitado', '01234567890', '10', '10', '1999099', '3');

