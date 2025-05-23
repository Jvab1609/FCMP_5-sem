USE escola;
DROP PROCEDURE  IF EXISTS `Count_Alunos`;


# Diminuir a capacidade quando agendo uma consulta

DELIMITER //
CREATE PROCEDURE `Count_Alunos`(IN `id_curso` int)
BEGIN
	SELECT COUNT(*) FROM aluno_has_curso WHERE curso_id_curso = id_curso;
END //

DELIMITER ;