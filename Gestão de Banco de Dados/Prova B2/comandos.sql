USE clinica;

# Tutor com maior número de cancelamentos

SELECT tutor_id_tutor, COUNT(data_cancelamento) FROM consulta WHERE data_cancelamento IS NOT NULL GROUP BY tutor_id_tutor ORDER BY COUNT(data_cancelamento) DESC LIMIT 10;

# Faturamento no mês de fevereiro de 2025

SELECT SUM(valor_pago) FROM nota WHERE data_pagto LIKE '2025-03-__ %';