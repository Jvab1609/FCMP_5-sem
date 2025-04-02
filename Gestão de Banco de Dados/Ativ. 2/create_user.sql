CREATE USER IF NOT EXISTS `cliente_clinica`@`%` IDENTIFIED BY 'cliente#1609';
GRANT SELECT, INSERT, UPDATE ON `clinica`.`tutor` TO `cliente_clinica`@`%`;
GRANT SELECT, INSERT, UPDATE, DELETE ON `clinica`.`telefone` TO `cliente_clinica`@`%`;
GRANT SELECT, INSERT, UPDATE, DELETE ON `clinica`.`endereco_has_tutor` TO `cliente_clinica`@`%`;
GRANT SELECT, INSERT, UPDATE, DELETE ON `clinica`.`endereco` TO `cliente_clinica`@`%`;
GRANT SELECT, INSERT, UPDATE ON `clinica`.`tutor_has_animal` TO `cliente_clinica`@`%`;
GRANT SELECT, INSERT, UPDATE ON `clinica`.`animal` TO `cliente_clinica`@`%`;
GRANT SELECT, INSERT, UPDATE ON `clinica`.`animal_has_vacina` TO `cliente_clinica`@`%`;
GRANT SELECT, UPDATE ON `clinica`.`consulta` TO `cliente_clinica`@`%`;
GRANT SELECT, UPDATE ON `clinica`.`nota` TO `cliente_clinica`@`%`;
FLUSH PRIVILEGES;

CREATE USER IF NOT EXISTS `veterinario_clinica`@`%` IDENTIFIED BY 'veterinario#1609';
GRANT SELECT, INSERT, UPDATE ON `clinica`.`veterinario` TO `veterinario_clinica`@`%`;
GRANT SELECT, INSERT, UPDATE ON `clinica`.`animal` TO `veterinario_clinica`@`%`;
GRANT SELECT, INSERT, UPDATE ON `clinica`.`animal_has_vacina` TO `veterinario_clinica`@`%`;
GRANT SELECT, INSERT, UPDATE ON `clinica`.`vacina` TO `veterinario_clinica`@`%`;
GRANT SELECT, INSERT, UPDATE ON `clinica`.`servico` TO `veterinario_clinica`@`%`;
GRANT SELECT, INSERT, UPDATE ON `clinica`.`consulta` TO `veterinario_clinica`@`%`;
GRANT SELECT, INSERT, UPDATE ON `clinica`.`nota` TO `veterinario_clinica`@`%`;
FLUSH PRIVILEGES;

CREATE USER IF NOT EXISTS `dba_clinica`@`%` IDENTIFIED BY 'dba#1609';
GRANT ALL PRIVILEGES ON `clinica`.* TO `dba_clinica`@`%`;
FLUSH PRIVILEGES;