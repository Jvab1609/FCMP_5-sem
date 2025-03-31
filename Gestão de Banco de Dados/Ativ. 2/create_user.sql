CREATE USER IF NOT EXISTS `cliente_clinica`@`%` IDENTIFIED BY 'cliente#1609';
GRANT SELECT, INSERT, UPDATE ON `clinica`.* TO `cliente_clinica`@`%`;
FLUSH PRIVILEGES;

CREATE USER IF NOT EXISTS `veterinario_clinica`@`%` IDENTIFIED BY 'veterinario#1609';
GRANT SELECT, INSERT, UPDATE, DELETE ON `clinica`.* TO `veterinario_clinica`@`%`;
FLUSH PRIVILEGES;

CREATE USER IF NOT EXISTS `dba_clinica`@`%` IDENTIFIED BY 'dba#1609';
GRANT ALL PRIVILEGES ON `clinica`.* TO `dba_clinica`@`%`;
FLUSH PRIVILEGES;