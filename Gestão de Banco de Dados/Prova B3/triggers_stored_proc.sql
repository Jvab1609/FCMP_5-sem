USE delivery;

#DROP PROCEDURE  IF EXISTS `Consultas_Mes`;

DROP TRIGGER  IF EXISTS `CalcularMedia`;

DELIMITER //
CREATE TRIGGER `CalcularMedia` AFTER INSERT ON avaliacao
FOR EACH ROW
BEGIN
	declare avgRest float(4);
    declare avgEntr float(4);
    declare idRest int;
    declare idEntr int;
    
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
	#CALL Und_DecrCap(new.unidade_id_unidade, new.servico_id_servico);
END //