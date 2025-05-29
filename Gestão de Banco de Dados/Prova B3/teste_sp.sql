USE delivery;

ALTER TABLE restaurante
ADD classificacao VARCHAR(7);

CALL ClassifRest();

#ALTER TABLE entregador
#ADD classificacao VARCHAR(7);

