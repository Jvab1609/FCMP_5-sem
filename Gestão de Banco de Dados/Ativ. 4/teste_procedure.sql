DELETE FROM consulta WHERE id_consulta = 100001;

START TRANSACTION;
INSERT INTO `consulta` VALUES 
(100001, '2025-05-03 15:13:47', '2025-06-10 10:45:00', null, null, null, 'obs_1', null, 2, 56841, 3, 56841, 2);
COMMIT;

SET SESSION sql_mode = '';

START TRANSACTION;
UPDATE `consulta` SET data_cancelamento = '2025-05-12' WHERE id_consulta = '100001';
COMMIT;

SELECT @@sql_mode;
SHOW CREATE TABLE clinica.log;