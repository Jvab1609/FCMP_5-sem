# Particionamento

# Log, por ano (HASH)
ALTER TABLE log
DROP PRIMARY KEY,
ADD PRIMARY KEY (id_log, data_hora);
ALTER TABLE log
PARTITION BY HASH(YEAR(data_hora))
PARTITIONS 5;


# Particionamento da consulta por unidade
CREATE TABLE consulta_particionada (
    id_consulta INT NOT NULL,
    agendamento DATETIME,
    horario_agendado DATETIME,
    chegada_animal DATETIME,
    inicio DATETIME,
    termino DATETIME,
    obs TEXT,
    data_cancelamento DATETIME,
    veterinario_id_veterinario INT,
    animal_id_animal INT,
    servico_id_servico INT,
    tutor_id_tutor INT,
    unidade_id_unidade INT,
    PRIMARY KEY (id_consulta, unidade_id_unidade)
)
PARTITION BY LIST COLUMNS (unidade_id_unidade) (
    PARTITION p1 VALUES IN (1),
    PARTITION p2 VALUES IN (2),
    PARTITION p3 VALUES IN (3),
    PARTITION p4 VALUES IN (4),
    PARTITION p5 VALUES IN (5)
);
INSERT INTO consulta_particionada
SELECT * FROM consulta;


# Particionamento da nota fiscal por forma de pagamento
CREATE TABLE nota_particionada (
    id_nota INT NOT NULL,
    valor_pago DECIMAL(10,2) NOT NULL,
    forma_pagto VARCHAR(20) NOT NULL,
    data_pagto DATETIME,
    obs TEXT,
    consulta_id_consulta INT,
    consulta_veterinario_id_veterinario INT,
    consulta_animal_id_animal INT,
    consulta_servico_id_servico INT,
    consulta_tutor_id_tutor INT,
    consulta_unidade_id_unidade INT,
    PRIMARY KEY (id_nota, forma_pagto)
)
PARTITION BY LIST COLUMNS (forma_pagto) (
    PARTITION p1 VALUES IN ('Pix'),
    PARTITION p2 VALUES IN ('Débito'),
    PARTITION p3 VALUES IN ('Crédito'),
    PARTITION p4 VALUES IN ('Dinheiro'),
    PARTITION p5 VALUES IN ('Boleto')
);
INSERT INTO nota_particionada
SELECT * FROM nota;






