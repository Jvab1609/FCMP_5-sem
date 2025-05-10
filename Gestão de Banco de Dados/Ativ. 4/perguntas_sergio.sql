#SELECT COUNT(*) FROM nota WHERE forma_pagto = 'Boleto';
#SELECT MAX(valor_pago) FROM nota WHERE forma_pagto = 'Crédito';
#SELECT AVG(valor_pago) FROM nota WHERE forma_pagto = 'Débito';
#SELECT forma_pagto, SUM(valor_pago) FROM nota GROUP BY forma_pagto ORDER BY SUM(valor_pago) DESC LIMIT 1;


#SELECT COUNT(id_servico) FROM servico
#INNER JOIN consulta ON consulta.servico_id_servico = servico.id_servico
#WHERE consulta.horario_agendado LIKE '2025-04-28 10:30:00';

#SELECT * FROM consulta WHERE animal_id_animal = 2 AND data_cancelamento IS NULL ORDER BY termino DESC;

#SELECT animal.id_animal, animal.nome_animal, animal.especie, vacina.nome_vacina FROM animal
#INNER JOIN animal_has_vacina ON animal.id_animal = animal_has_vacina.animal_id_animal
#INNER JOIN vacina ON vacina.id_vacina = animal_has_vacina.vacina_id_vacina
#WHERE animal.id_animal = 2;

#SELECT unidade_id_unidade, COUNT(id_consulta) FROM consulta WHERE data_cancelamento IS NULL GROUP BY unidade_id_unidade;

#SELECT consulta_unidade_id_unidade, SUM(valor_pago) FROM nota GROUP BY consulta_unidade_id_unidade;

#SELECT COUNT(*) FROM consulta;