USE escola;
CALL Count_Alunos(11);
CALL Count_Profs(8);

ALTER TABLE aluno_has_curso
ADD estado VARCHAR(7);

CALL Avaliar_Notas();
