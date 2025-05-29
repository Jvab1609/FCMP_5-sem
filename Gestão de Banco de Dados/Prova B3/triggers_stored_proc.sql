USE delivery;

DROP PROCEDURE  IF EXISTS `ClassifRest`;
DROP PROCEDURE  IF EXISTS `ClassifEntr`;
DROP PROCEDURE  IF EXISTS `TopRestPedidos`;
DROP PROCEDURE  IF EXISTS `TopEntrPedidos`;
DROP TRIGGER  IF EXISTS `CalcularMedia`;


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

CREATE PROCEDURE `TopRestPedidos` (IN modo int, IN limite int)
BEGIN
	IF modo = 1 THEN
		SELECT restaurante.id_restaurante, restaurante.nome_rest, COUNT(pedido.id_pedido) FROM restaurante
		INNER JOIN pedido ON pedido.restaurante_id_restaurante = restaurante.id_restaurante
		GROUP BY restaurante.id_restaurante ORDER BY COUNT(*) DESC LIMIT limite;
    ELSE
		SELECT restaurante.id_restaurante, restaurante.nome_rest, COUNT(pedido.id_pedido) FROM restaurante
		INNER JOIN pedido ON pedido.restaurante_id_restaurante = restaurante.id_restaurante
		GROUP BY restaurante.id_restaurante ORDER BY COUNT(*) ASC LIMIT limite;
	END IF;
END // 

CREATE PROCEDURE `TopEntrPedidos` (IN modo int, IN limite int)
BEGIN
	IF modo = 1 THEN
		SELECT entregador.id_entregador, entregador.nome_entregador, COUNT(pedido.id_pedido) FROM entregador
		INNER JOIN pedido ON pedido.entregador_id_entregador = entregador.id_entregador
		GROUP BY entregador.id_entregador ORDER BY COUNT(*) DESC LIMIT limite;
    ELSE
		SELECT entregador.id_entregador, entregador.nome_entregador, COUNT(pedido.id_pedido) FROM entregador
		INNER JOIN pedido ON pedido.entregador_id_entregador = entregador.id_entregador
		GROUP BY entregador.id_entregador ORDER BY COUNT(*) ASC LIMIT limite;
	END IF;
END // 

CREATE PROCEDURE `TicketMedio` (IN idRest int)
BEGIN
	SELECT AVG(pagamento.valor) FROM restaurante
	INNER JOIN pedido ON pedido.restaurante_id_restaurante = restaurante.id_restaurante
    INNER JOIN pagamento ON pagamento.pedido_id_pedido = pedido.id_pedido
	WHERE restaurante.id_restaurante = idRest;
END //



DELIMITER //
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



