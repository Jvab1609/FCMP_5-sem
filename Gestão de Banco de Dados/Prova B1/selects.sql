# veiculos maior preco
SELECT renavam, modelo, valor_fipe FROM veiculo ORDER BY valor_fipe DESC LIMIT 3;

#veículos mais antigos
SELECT renavam, modelo, ano_fabricacao FROM veiculo ORDER BY ano_fabricacao ASC LIMIT 3;

#veículos vendidos
SELECT veiculo.renavam, veiculo.modelo FROM veiculo
INNER JOIN venda ON veiculo.renavam = venda.veiculo_renavam;

#quantidade de veículos cadastrados
SELECT COUNT(*) FROM veiculo;