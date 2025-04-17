ALTER TABLE historico_venda
DROP PRIMARY KEY,
ADD PRIMARY KEY (id_venda, data_hora_compra);
ALTER TABLE historico_venda
PARTITION BY HASH(YEAR(data_hora_compra))
PARTITIONS 4;