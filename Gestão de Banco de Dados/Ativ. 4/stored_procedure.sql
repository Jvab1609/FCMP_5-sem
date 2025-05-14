DROP PROCEDURE  IF EXISTS `Und_DecrCap`;
DROP PROCEDURE  IF EXISTS `Und_IncrCap`;
DROP PROCEDURE  IF EXISTS `Log_Insert`;
DROP TRIGGER  IF EXISTS `AgendarConsulta`;
DROP TRIGGER  IF EXISTS `CancelarConsulta`;
DROP TRIGGER  IF EXISTS `Logging`;

# Diminuir a capacidade quando agendo uma consulta

DELIMITER //
CREATE PROCEDURE `Und_DecrCap`(`id_unid` int, `id_serv` int)
BEGIN
	declare cont int(4);
    
	SELECT capacidade INTO cont FROM unidade_has_servico WHERE unidade_id_unidade = id_unid AND servico_id_servico = id_serv;
    IF cont > 0 THEN
		UPDATE unidade_has_servico SET capacidade = cont - 1 WHERE unidade_id_unidade = id_unid AND servico_id_servico = id_serv;
    ELSE
		SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = 'A unidade não tem capacidade no momento';
	END IF;
END //

CREATE TRIGGER `AgendarConsulta` BEFORE INSERT ON consulta
FOR EACH ROW
BEGIN
	CALL Und_DecrCap(new.unidade_id_unidade, new.servico_id_servico);
END //



CREATE PROCEDURE `Und_IncrCap`(`id_unid` int, `id_serv` int)
BEGIN
	declare cont int(4);
    SELECT capacidade INTO cont FROM unidade_has_servico WHERE unidade_id_unidade = id_unid AND servico_id_servico = id_serv;
	UPDATE unidade_has_servico SET capacidade = cont + 1 WHERE unidade_id_unidade = id_unid AND servico_id_servico = id_serv;
END //

CREATE TRIGGER `CancelarConsulta` AFTER UPDATE ON consulta
FOR EACH ROW
BEGIN
	IF new.data_cancelamento IS NOT null THEN
		CALL Und_IncrCap(new.unidade_id_unidade, new.servico_id_servico);
	ELSE
		CALL Und_DecrCap(new.unidade_id_unidade, new.servico_id_servico);
	END IF;
END //



CREATE PROCEDURE `Log_Insert`(`nome_tabela` varchar(20))
BEGIN
	INSERT INTO log (data_hora, agente, acao) VALUES(now(), CURRENT_USER(), CONCAT("UPDATE ", nome_tabela));
END //

CREATE TRIGGER `Logging` AFTER UPDATE ON clinica.consulta
FOR EACH ROW
BEGIN
    CALL Log_Insert("Consulta");
END //

DELIMITER ;