# Diminuir a capacidade quando agendo uma consulta

DELIMITER //
CREATE PROCEDURE `Und_AtualizaCap`(`id_unid` int, `id_serv` int)
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
	CALL Und_atualizaCap(new.unidade_id_unidade, new.servico_id_servico);
END //

DELIMITER ;