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

CALL TicketMedio(2);

CALL TopPratos(3, 1, 3);

CALL TopBairros('campinas', 1, 3);
CALL TopBairros('sao paulo', 1, 3);

CALL TopRestAval(1, 3);
CALL TopEntrAval(1, 3);

CALL TopClientes(84, 3);