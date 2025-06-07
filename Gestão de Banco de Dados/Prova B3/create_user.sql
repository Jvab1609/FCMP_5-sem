CREATE USER IF NOT EXISTS `cliente_delivery`@`%` IDENTIFIED BY 'cliente#1609';
GRANT SELECT, INSERT, UPDATE ON `delivery`.`cliente` TO `cliente_delivery`@`%`;
GRANT SELECT, INSERT, UPDATE ON `delivery`.`endereco` TO `cliente_delivery`@`%`;
GRANT SELECT, INSERT, UPDATE, DELETE ON `delivery`.`cliente_has_endereco` TO `cliente_delivery`@`%`;
GRANT SELECT, INSERT, UPDATE ON `delivery`.`telefone` TO `cliente_delivery`@`%`;
GRANT SELECT, INSERT, UPDATE ON `delivery`.`pedido` TO `cliente_delivery`@`%`;
GRANT SELECT, INSERT, UPDATE ON `delivery`.`avaliacao` TO `cliente_delivery`@`%`;
GRANT SELECT, INSERT, UPDATE ON `delivery`.`pagamento` TO `cliente_delivery`@`%`;
GRANT SELECT ON `delivery`.`restaurante` TO `cliente_delivery`@`%`;
GRANT SELECT ON `delivery`.`prato` TO `cliente_delivery`@`%`;
GRANT SELECT ON `delivery`.`entregador` TO `cliente_delivery`@`%`;


CREATE USER IF NOT EXISTS `restaurante_delivery`@`%` IDENTIFIED BY 'restaurante#1609';
GRANT SELECT, INSERT, UPDATE ON `delivery`.`restaurante` TO `restaurante_delivery`@`%`;
GRANT SELECT, INSERT, UPDATE ON `delivery`.`prato` TO `restaurante_delivery`@`%`;
GRANT SELECT, INSERT, UPDATE ON `delivery`.`telefone` TO `restaurante_delivery`@`%`;
GRANT SELECT, INSERT, UPDATE ON `delivery`.`endereco` TO `restaurante_delivery`@`%`;
GRANT SELECT ON `delivery`.`pedido` TO `restaurante_delivery`@`%`;
GRANT SELECT ON `delivery`.`cliente` TO `restaurante_delivery`@`%`;
GRANT SELECT ON `delivery`.`avaliacao` TO `restaurante_delivery`@`%`;


CREATE USER IF NOT EXISTS `entregador_delivery`@`%` IDENTIFIED BY 'entregador#1609';
GRANT SELECT, INSERT, UPDATE ON `delivery`.`entregador` TO `entregador_delivery`@`%`;
GRANT SELECT, INSERT, UPDATE ON `delivery`.`telefone` TO `entregador_delivery`@`%`;
GRANT SELECT, INSERT, UPDATE ON `delivery`.`endereco` TO `entregador_delivery`@`%`;
GRANT SELECT, UPDATE ON `delivery`.`pedido` TO `entregador_delivery`@`%`;
GRANT SELECT ON `delivery`.`cliente` TO `entregador_delivery`@`%`;
GRANT SELECT ON `delivery`.`restaurante` TO `entregador_delivery`@`%`;


CREATE USER IF NOT EXISTS `dba_delivery`@`%` IDENTIFIED BY 'dba#1609';
GRANT ALL PRIVILEGES ON `delivery`.* TO `dba_delivery`@`%`;
FLUSH PRIVILEGES;