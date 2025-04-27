USE clinica;

# Tutor com maior número de cancelamentos

SELECT tutor_id_tutor, COUNT(data_cancelamento) FROM consulta WHERE data_cancelamento IS NOT NULL GROUP BY tutor_id_tutor ORDER BY COUNT(data_cancelamento) DESC LIMIT 3;

# Faturamento no mês de setembro de 2024