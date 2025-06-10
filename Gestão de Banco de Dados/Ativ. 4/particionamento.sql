USE delivery;

# Particionamento

# Log, por ano (HASH)
ALTER TABLE log
DROP PRIMARY KEY,
ADD PRIMARY KEY (id_log, data_hora);
ALTER TABLE log
PARTITION BY HASH(YEAR(data_hora))
PARTITIONS 5;



SHOW CREATE TABLE pedido;
# Particionamento do pedido por ano

CREATE TABLE pedido_historico (
  `id_pedido` int NOT NULL AUTO_INCREMENT,
  `status` varchar(20) DEFAULT NULL,
  `recebido` datetime,
  `inicio_preparo` datetime DEFAULT NULL,
  `saida` datetime DEFAULT NULL,
  `entrega` datetime DEFAULT NULL,
  `cancelamento` datetime DEFAULT NULL,
  `restaurante_id_restaurante` int NOT NULL,
  `entregador_id_entregador` int NOT NULL,
  `cliente_id_cliente` int NOT NULL,
  `endereco_cep` varchar(9) NOT NULL,
  `endereco_num_end` int NOT NULL, 
  PRIMARY KEY (`id_pedido`, `recebido`)
)
PARTITION BY HASH(YEAR(recebido))
PARTITIONS 8;

DROP PROCEDURE  IF EXISTS `MoverPedidosAntigos`;

DELIMITER //
CREATE PROCEDURE MoverPedidosAntigos()
BEGIN
    DECLARE erro BOOL DEFAULT FALSE;
	DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET erro = TRUE;
    START TRANSACTION;
    
    

    INSERT INTO pedido_historico (
        status, recebido, inicio_preparo, saida, entrega, cancelamento,
        restaurante_id_restaurante, entregador_id_entregador,
        cliente_id_cliente, endereco_cep, endereco_num_end
    )
    SELECT 
        status, recebido, inicio_preparo, saida, entrega, cancelamento,
        restaurante_id_restaurante, entregador_id_entregador,
        cliente_id_cliente, endereco_cep, endereco_num_end
    FROM pedido
    WHERE recebido < NOW() - INTERVAL 1 YEAR;

    DELETE FROM pedido
    WHERE recebido < NOW() - INTERVAL 1 YEAR;

    IF erro THEN
        ROLLBACK;
    ELSE
        COMMIT;
    END IF;
END//

CALL MoverPedidosAntigos();

DELIMITER ;


# Particionamento da nota fiscal por forma de pagamento
CREATE TABLE pagamento_particionado (
    id_pagamento INT AUTO_INCREMENT,
    horario_pagto DATETIME,
    forma_pagto VARCHAR(10) NOT NULL,
    valor FLOAT,
    pedido_id_pedido INT NOT NULL,
    PRIMARY KEY (`id_pagamento`, `forma_pagto`)
)
PARTITION BY LIST COLUMNS (forma_pagto) (
    PARTITION p1 VALUES IN ('Pix'),
    PARTITION p2 VALUES IN ('Débito'),
    PARTITION p3 VALUES IN ('Crédito'),
    PARTITION p4 VALUES IN ('Dinheiro'),
    PARTITION p5 VALUES IN ('VR')
);
INSERT INTO pagamento_particionado
SELECT * FROM pagamento;






