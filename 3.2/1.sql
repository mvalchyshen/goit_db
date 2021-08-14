use goit_hw_db;


alter table goit_hw_db.developers
add salary int not null default 0;

UPDATE `goit_hw_db`.`developers` SET `salary` = '1000' WHERE (`id_developer` = '1');
UPDATE `goit_hw_db`.`developers` SET `salary` = '2000' WHERE (`id_developer` = '2');
UPDATE `goit_hw_db`.`developers` SET `salary` = '3000' WHERE (`id_developer` = '3');
UPDATE `goit_hw_db`.`developers` SET `salary` = '2000' WHERE (`id_developer` = '4');
UPDATE `goit_hw_db`.`developers` SET `salary` = '4000' WHERE (`id_developer` = '5');

