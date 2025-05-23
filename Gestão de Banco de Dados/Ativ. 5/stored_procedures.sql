USE escola;
DROP PROCEDURE  IF EXISTS `Count_Alunos`;
DROP PROCEDURE  IF EXISTS `Count_Profs`;
DROP PROCEDURE  IF EXISTS `Avaliar_Notas`;


DELIMITER //
CREATE PROCEDURE `Count_Alunos`(IN `id_curso` int)
BEGIN
	SELECT COUNT(*) FROM aluno_has_curso WHERE curso_id_curso = id_curso;
END //

DELIMITER //
CREATE PROCEDURE `Count_Profs`(IN `id_curso` int)
BEGIN
	SELECT COUNT(*) FROM professor WHERE curso_id_curso = id_curso;
END //

DELIMITER //
CREATE PROCEDURE `Avaliar_Notas`()
BEGIN
	
    DECLARE nota_i FLOAT;
    DECLARE pronto INT DEFAULT 0;
    #DECLARE nota_i INT;
    DECLARE nota_cursor CURSOR FOR SELECT nota FROM aluno_has_curso;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET pronto = 1;
    
    OPEN nota_cursor;
    
    REPEAT
		FETCH nota_cursor INTO nota_i;
        #SELECT nota INTO nota_i FROM aluno_has_curso WHERE aluno_id_aluno = id_i;
        IF nota_i > 8 THEN
			UPDATE aluno_has_curso SET estado = 'OTIMO' WHERE nota = nota_i ;
		ELSEIF nota_i >= 6 AND nota_i <= 8 THEN
			UPDATE aluno_has_curso SET estado = 'BOM' WHERE nota = nota_i;
		ELSE
			UPDATE aluno_has_curso SET estado = 'ATENCAO' WHERE nota = nota_i;
		END IF;
    UNTIL pronto
    END REPEAT;
    
    CLOSE nota_cursor;
END //

DELIMITER ;