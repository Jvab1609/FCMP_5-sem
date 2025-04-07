USE clinica;

# Mostrar as 5 consultas/notas mais caras
SELECT animal.nome_animal, tutor.nome_tutor, consulta.inicio, consulta.termino, servico.nome_serv, veterinario.nome_vet, nota.valor_pago FROM nota
INNER JOIN consulta ON consulta.id_consulta = nota.consulta_id_consulta
INNER JOIN animal ON animal.id_animal = consulta.animal_id_animal
INNER JOIN tutor ON tutor.cpf_tutor = nota.tutor_cpf_tutor
INNER JOIN servico ON servico.id_servico = nota.consulta_servico_id_servico
INNER JOIN veterinario ON veterinario.id_veterinario = nota.consulta_veterinario_id_veterinario
ORDER BY nota.valor_pago DESC LIMIT 5;

# Mostrar os 5 animais mais pesados
SELECT nome_animal, especie, raca, peso FROM animal ORDER BY peso DESC LIMIT 5