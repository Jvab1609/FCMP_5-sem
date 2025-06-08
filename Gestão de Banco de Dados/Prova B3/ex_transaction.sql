START TRANSACTION;

-- Inserir um novo pedido
INSERT INTO pedido (
  status,
  recebido,
  inicio_preparo,
  saida,
  entrega,
  cancelamento,
  restaurante_id_restaurante,
  entregador_id_entregador,
  cliente_id_cliente,
  endereco_cep,
  endereco_num_end
)
VALUES (
  'RECEBIDO',
  NOW(),
  NULL,
  NULL,
  NULL,
  NULL,
  1,             -- id do restaurante
  2,             -- id do entregador
  3,             -- id do cliente
  '12345-678',   -- CEP do endereço
  101            -- número do endereço
);

-- Verificar se o cliente existe (condição de exemplo)
SET @cliente_ok = (
  SELECT COUNT(*) FROM cliente WHERE id_cliente = 3
);

-- Condição: confirmar se o cliente existe antes de confirmar o pedido
IF @cliente_ok > 0 THEN
  COMMIT;
ELSE
  ROLLBACK;
END IF;
