USE delivery;

DROP PROCEDURE  IF EXISTS `ClassifRest`;
DROP PROCEDURE  IF EXISTS `ClassifEntr`;
DROP PROCEDURE  IF EXISTS `TopRestPedidos`;
DROP PROCEDURE  IF EXISTS `TopEntrPedidos`;
DROP PROCEDURE  IF EXISTS `TopRestAval`;
DROP PROCEDURE  IF EXISTS `TopEntrAval`;
DROP PROCEDURE  IF EXISTS `TicketMedio`;
DROP PROCEDURE  IF EXISTS `TopPratos`;
DROP PROCEDURE  IF EXISTS `TopBairros`;
DROP PROCEDURE  IF EXISTS `TopClientes`;

DROP TRIGGER  IF EXISTS `CalcularMedia`;
DROP TRIGGER  IF EXISTS `LogInsertPedido`;
DROP TRIGGER  IF EXISTS `LogRemoverPrato`;
DROP TRIGGER  IF EXISTS `CheckExcluido`;
DROP TRIGGER  IF EXISTS `ExcluirPratosRest`;
DROP TRIGGER  IF EXISTS `PedidoDeletado`;

DELIMITER //
CREATE PROCEDURE `ClassifRest`()
BEGIN
    DECLARE nota_i FLOAT;
    DECLARE pronto INT DEFAULT 0;

    DECLARE nota_cursor CURSOR FOR SELECT nota_med_restaurante FROM restaurante;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET pronto = 1;
    
    OPEN nota_cursor;
    
    REPEAT
		FETCH nota_cursor INTO nota_i;
        IF nota_i >= 4.5 THEN
			UPDATE restaurante SET classificacao = 'OTIMO' WHERE nota_med_restaurante = nota_i ;
		ELSEIF nota_i >= 4 AND nota_i < 4.5 THEN
			UPDATE restaurante SET classificacao = 'BOM' WHERE nota_med_restaurante = nota_i;
		ELSEIF nota_i >= 3 AND nota_i < 4 THEN
			UPDATE restaurante SET classificacao = 'MEDIANO' WHERE nota_med_restaurante = nota_i;
        ELSEIF nota_i >= 2 AND nota_i < 3 THEN
			UPDATE restaurante SET classificacao = 'RUIM' WHERE nota_med_restaurante = nota_i;    
		ELSEIF nota_i >= 0 AND nota_i < 2 THEN
			UPDATE restaurante SET classificacao = 'PESSIMO' WHERE nota_med_restaurante = nota_i;
		ELSE
			UPDATE restaurante SET classificacao = 'NA' WHERE nota_med_restaurante = nota_i;
		END IF;
    UNTIL pronto
    END REPEAT;
    
    CLOSE nota_cursor;
END //


DELIMITER //
CREATE PROCEDURE `ClassifEntr`()
BEGIN
    DECLARE nota_i FLOAT;
    DECLARE pronto INT DEFAULT 0;

    DECLARE nota_cursor CURSOR FOR SELECT nota_media_entregador FROM entregador;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET pronto = 1;
    
    OPEN nota_cursor;
    
    REPEAT
		FETCH nota_cursor INTO nota_i;
        IF nota_i >= 4.5 THEN
			UPDATE entregador SET classificacao = 'OTIMO' WHERE nota_media_entregador = nota_i ;
		ELSEIF nota_i >= 4 AND nota_i < 4.5 THEN
			UPDATE entregador SET classificacao = 'BOM' WHERE nota_media_entregador = nota_i;
		ELSEIF nota_i >= 3 AND nota_i < 4 THEN
			UPDATE entregador SET classificacao = 'MEDIANO' WHERE nota_media_entregador = nota_i;
        ELSEIF nota_i >= 2 AND nota_i < 3 THEN
			UPDATE entregador SET classificacao = 'RUIM' WHERE nota_media_entregador = nota_i; 
		ELSEIF nota_i >= 0 AND nota_i < 2 THEN
			UPDATE entregador SET classificacao = 'PESSIMO' WHERE nota_media_entregador = nota_i;
		ELSE
			UPDATE entregador SET classificacao = 'NA' WHERE nota_media_entregador = nota_i;
		END IF;
    UNTIL pronto
    END REPEAT;
    
    CLOSE nota_cursor;
END //

CREATE PROCEDURE `TopRestPedidos` (IN modo int, IN limite int, IN dataInicio DATE, IN dataFim DATE)
BEGIN
	IF modo = 1 THEN
		SELECT restaurante.id_restaurante, restaurante.nome_rest, COUNT(pedido.id_pedido) FROM restaurante
		INNER JOIN pedido ON pedido.restaurante_id_restaurante = restaurante.id_restaurante
        WHERE pedido.entrega BETWEEN dataInicio AND dataFim
		GROUP BY restaurante.id_restaurante ORDER BY COUNT(*) DESC LIMIT limite;
    ELSE
		SELECT restaurante.id_restaurante, restaurante.nome_rest, COUNT(pedido.id_pedido) FROM restaurante
		INNER JOIN pedido ON pedido.restaurante_id_restaurante = restaurante.id_restaurante
        WHERE pedido.entrega BETWEEN dataInicio AND dataFim
		GROUP BY restaurante.id_restaurante ORDER BY COUNT(*) ASC LIMIT limite;
	END IF;
END // 

CREATE PROCEDURE `TopEntrPedidos` (IN modo int, IN limite int, IN dataInicio DATE, IN dataFim DATE)
BEGIN
	IF modo = 1 THEN
		SELECT entregador.id_entregador, entregador.nome_entregador, COUNT(pedido.id_pedido) FROM entregador
		INNER JOIN pedido ON pedido.entregador_id_entregador = entregador.id_entregador
        WHERE pedido.entrega BETWEEN dataInicio AND dataFim
		GROUP BY entregador.id_entregador ORDER BY COUNT(*) DESC LIMIT limite;
    ELSE
		SELECT entregador.id_entregador, entregador.nome_entregador, COUNT(pedido.id_pedido) FROM entregador
		INNER JOIN pedido ON pedido.entregador_id_entregador = entregador.id_entregador
        WHERE pedido.entrega BETWEEN dataInicio AND dataFim
		GROUP BY entregador.id_entregador ORDER BY COUNT(*) ASC LIMIT limite;
	END IF;
END // 


CREATE PROCEDURE `TopRestAval` (IN modo int, IN limite int)
BEGIN
	IF modo = 1 THEN
		SELECT id_restaurante, nome_rest, nota_med_restaurante FROM restaurante
		ORDER BY nota_med_restaurante DESC LIMIT limite;
    ELSE
		SELECT id_restaurante, nome_rest, nota_med_restaurante FROM restaurante
		ORDER BY nota_med_restaurante ASC LIMIT limite;
	END IF;
END // 

CREATE PROCEDURE `TopEntrAval` (IN modo int, IN limite int)
BEGIN
	IF modo = 1 THEN
		SELECT id_entregador, nome_entregador, nota_media_entregador FROM entregador
		ORDER BY nota_media_entregador DESC LIMIT limite;
    ELSE
		SELECT id_entregador, nome_entregador, nota_media_entregador FROM entregador
		ORDER BY nota_media_entregador ASC LIMIT limite;
	END IF;
END // 


CREATE PROCEDURE `TicketMedio` (IN idRest int, IN dataInicio DATE, IN dataFim DATE)
BEGIN
	SELECT AVG(pagamento.valor) FROM restaurante
	INNER JOIN pedido ON pedido.restaurante_id_restaurante = restaurante.id_restaurante
    INNER JOIN pagamento ON pagamento.pedido_id_pedido = pedido.id_pedido
	WHERE restaurante.id_restaurante = idRest AND pagamento.horario_pagto BETWEEN dataInicio AND dataFim;
END //

CREATE PROCEDURE `TopPratos` (IN idRest int, IN modo int, IN limite int, IN dataInicio DATE, IN dataFim DATE)
BEGIN
	IF modo = 1 THEN
		SELECT prato.nome_prato, COUNT(pedido_has_prato.prato_id_prato) FROM prato
		INNER JOIN pedido_has_prato ON pedido_has_prato.prato_id_prato = prato.id_prato
        WHERE prato.restaurante_id_restaurante = idRest AND pedido.entrega BETWEEN dataInicio AND dataFim
		GROUP BY prato.nome_prato ORDER BY COUNT(*) DESC LIMIT limite;
    ELSE
		SELECT prato.nome_prato, COUNT(pedido_has_prato.prato_id_prato) FROM prato
		INNER JOIN pedido_has_prato ON pedido_has_prato.prato_id_prato = prato.id_prato
        WHERE prato.restaurante_id_restaurante = idRest AND pedido.entrega BETWEEN dataInicio AND dataFim
		GROUP BY prato.nome_prato ORDER BY COUNT(*) ASC LIMIT limite;
	END IF;
END //


CREATE PROCEDURE `TopBairros` (IN cidade varchar(50), IN modo int, IN limite int, IN dataInicio DATE, IN dataFim DATE)
BEGIN
	IF modo = 1 THEN
		SELECT endereco.bairro, COUNT(pedido.id_pedido) FROM endereco
		INNER JOIN pedido ON pedido.endereco_cep = endereco.cep AND pedido.endereco_num_end = endereco.num_end
        WHERE endereco.cidade LIKE cidade AND pedido.entrega BETWEEN dataInicio AND dataFim
		GROUP BY endereco.bairro ORDER BY COUNT(pedido.id_pedido) DESC LIMIT limite;
    ELSE
		SELECT endereco.bairro, COUNT(pedido.id_pedido) FROM endereco
		INNER JOIN pedido ON pedido.endereco_cep = endereco.cep AND pedido.endereco_num_end = endereco.num_end
        WHERE endereco.cidade LIKE cidade AND pedido.entrega BETWEEN dataInicio AND dataFim
		GROUP BY endereco.bairro ORDER BY COUNT(pedido.id_pedido) ASC LIMIT limite;
	END IF;
END //


CREATE PROCEDURE `TopClientes`(IN idRest int, IN limite int, IN dataInicio DATE, IN dataFim DATE)
BEGIN
	SELECT cliente.nome_cliente, COUNT(pedido.id_pedido) FROM cliente
	INNER JOIN pedido ON pedido.cliente_id_cliente = cliente.id_cliente
	WHERE pedido.restaurante_id_restaurante = idRest AND pedido.entrega BETWEEN dataInicio AND dataFim
	GROUP BY cliente.nome_cliente ORDER BY COUNT(pedido.id_pedido) DESC LIMIT limite;
END //

CREATE TRIGGER `CalcularMedia` AFTER INSERT ON avaliacao
FOR EACH ROW
BEGIN
	declare avgRest float(4);
    declare avgEntr float(4);
    declare idRest int;
    declare idEntr int;
    
    declare restColCount int;
    declare entrColCount int;
    
	# Pegando o ID do restaurante
    SELECT pedido.restaurante_id_restaurante INTO idRest FROM pedido
    INNER JOIN avaliacao ON pedido.id_pedido = avaliacao.pedido_id_pedido
    WHERE avaliacao.id_avaliacao = new.id_avaliacao;
    
    # Pegando ID do entregador
    SELECT pedido.entregador_id_entregador INTO idEntr FROM pedido
    INNER JOIN avaliacao ON pedido.id_pedido = avaliacao.pedido_id_pedido
    WHERE avaliacao.id_avaliacao = new.id_avaliacao;
    
    # Média das notas de restaurante
    SELECT AVG(avaliacao.nota_restaurante) INTO avgRest FROM pedido
    INNER JOIN avaliacao ON pedido.id_pedido = avaliacao.pedido_id_pedido
    WHERE pedido.restaurante_id_restaurante = idRest;
	
    SELECT AVG(avaliacao.nota_entregador) INTO avgEntr FROM pedido
    INNER JOIN avaliacao ON pedido.id_pedido = avaliacao.pedido_id_pedido
    WHERE pedido.entregador_id_entregador = idEntr;
    
	UPDATE restaurante SET nota_med_restaurante = avgRest WHERE id_restaurante = idRest;
    UPDATE entregador SET nota_media_entregador = avgEntr WHERE id_entregador = idEntr;
    
    
	SELECT count(*) INTO entrColCount FROM information_schema.columns WHERE table_name ='entregador';
    
    IF entrColCount >= 7 THEN
		IF avgEntr >= 4.5 THEN
			UPDATE entregador SET classificacao = 'OTIMO' WHERE nota_media_entregador = avgEntr ;
		ELSEIF avgEntr >= 4 AND avgEntr < 4.5 THEN
			UPDATE entregador SET classificacao = 'BOM' WHERE nota_media_entregador = avgEntr;
		ELSEIF avgEntr >= 3 AND avgEntr < 4 THEN
			UPDATE entregador SET classificacao = 'MEDIANO' WHERE nota_media_entregador = avgEntr;
        ELSEIF avgEntr >= 2 AND avgEntr < 3 THEN
			UPDATE entregador SET classificacao = 'RUIM' WHERE nota_media_entregador = avgEntr; 
		ELSEIF avgEntr >= 0 AND avgEntr < 2 THEN
			UPDATE entregador SET classificacao = 'PESSIMO' WHERE nota_media_entregador = avgEntr;
		ELSE
			UPDATE entregador SET classificacao = 'NA' WHERE nota_media_entregador = avgEntr;
		END IF;
	END IF;
    
    SELECT count(*) INTO restColCount FROM information_schema.columns WHERE table_name ='restaurante';
    IF restColCount >= 8 THEN
		IF avgRest >= 4.5 THEN
			UPDATE restaurante SET classificacao = 'OTIMO' WHERE nota_med_restaurante = avgRest;
		ELSEIF avgRest >= 4 AND avgRest < 4.5 THEN
			UPDATE restaurante SET classificacao = 'BOM' WHERE nota_med_restaurante = avgRest;
		ELSEIF avgRest >= 3 AND avgRest < 4 THEN
			UPDATE restaurante SET classificacao = 'MEDIANO' WHERE nota_med_restaurante = avgRest;
        ELSEIF avgRest >= 2 AND avgRest < 3 THEN
			UPDATE restaurante SET classificacao = 'RUIM' WHERE nota_med_restaurante = avgRest;    
		ELSEIF avgRest >= 0 AND avgRest < 2 THEN
			UPDATE restaurante SET classificacao = 'PESSIMO' WHERE nota_med_restaurante = avgRest;
		ELSE
			UPDATE restaurante SET classificacao = 'NA' WHERE nota_med_restaurante = avgRest;
		END IF;
	END IF;
END //




CREATE TRIGGER `LogInsertPedido` AFTER INSERT ON pedido
FOR EACH ROW
BEGIN
	INSERT INTO log (autor, data_hora, acao)
	VALUES (CURRENT_USER(), NOW(), CONCAT('Novo pedido ID: ', new.id_pedido));
END //

CREATE TRIGGER `LogRemoverPrato` AFTER UPDATE ON prato
FOR EACH ROW
BEGIN
	IF new.excluido = 1 THEN
		INSERT INTO log (autor, data_hora, acao)
		VALUES (CURRENT_USER(), NOW(), CONCAT('Prato excluído: ', new.id_prato));
	END IF;
END //

CREATE TRIGGER `CheckExcluido` BEFORE INSERT ON pedido
FOR EACH ROW
BEGIN
  IF (SELECT excluido FROM entregador WHERE id_entregador = NEW.entregador_id_entregador) = 1
     OR (SELECT excluido FROM restaurante WHERE id_restaurante = NEW.restaurante_id_restaurante) = 1 THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Não é possível criar pedido com entregador ou restaurante inativo.';
  END IF;
END //

CREATE TRIGGER `ExcluirPratosRest` AFTER UPDATE ON restaurante
FOR EACH ROW
BEGIN
	IF NEW.excluido = 1 THEN
		UPDATE prato SET excluido = 1 WHERE restaurante_id_restaurante = NEW.id_restaurante;
	END IF;
END //


CREATE TRIGGER `PedidoDeletado` BEFORE DELETE ON pedido FOR EACH ROW
BEGIN
	DELETE FROM avaliacao WHERE pedido_id_pedido = OLD.id_pedido;
    DELETE FROM pagamento WHERE pedido_id_pedido = OLD.id_pedido;
    DELETE FROM pedido_has_prato WHERE pedido_id_pedido = OLD.id_pedido;
    INSERT INTO log (autor, data_hora, acao)
	VALUES (CURRENT_USER(), NOW(), CONCAT('Pedido ID ', OLD.id_pedido, ' foi deletado.'));
END //
