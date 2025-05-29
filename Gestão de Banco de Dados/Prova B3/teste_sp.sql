USE delivery;

ALTER TABLE restaurante
ADD classificacao VARCHAR(7);

CALL ClassifRest();

ALTER TABLE entregador
ADD classificacao VARCHAR(7);
CALL ClassifEntr();

CALL TopRestPedidos(1, 3);
CALL TopRestPedidos(0, 3);

CALL TopEntrPedidos(1, 3);
CALL TopEntrPedidos(0, 3);

SELECT count(*) FROM information_schema.columns WHERE table_name ='entregador';