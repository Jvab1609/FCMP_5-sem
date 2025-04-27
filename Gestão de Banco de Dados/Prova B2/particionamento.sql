# Particionamento

# Log, por ano (HASH)
ALTER TABLE log
DROP PRIMARY KEY,
ADD PRIMARY KEY (id_log, data_hora);
ALTER TABLE log
PARTITION BY HASH(YEAR(data_hora))
PARTITIONS 5;
