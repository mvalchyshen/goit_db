/*
-- Query: SELECT * FROM goit_db.skills
LIMIT 0, 1000

-- Date: 2021-08-03 23:28
*/
use goit_db;

INSERT INTO `goit_db`.`skills` (`id_skill`,`language`,`level`) VALUES (1,'Java','Middle');
INSERT INTO `goit_db`.`skills` (`id_skill`,`language`,`level`) VALUES (2,'Java','Junior');
INSERT INTO `goit_db`.`skills` (`id_skill`,`language`,`level`) VALUES (3,'Java','Senior');
INSERT INTO `goit_db`.`skills` (`id_skill`,`language`,`level`) VALUES (4,'C++','Junior');
INSERT INTO `goit_db`.`skills` (`id_skill`,`language`,`level`) VALUES (5,'C++','Middle');
INSERT INTO `goit_db`.`skills` (`id_skill`,`language`,`level`) VALUES (6,'C++','Senior');
INSERT INTO `goit_db`.`skills` (`id_skill`,`language`,`level`) VALUES (7,'C#','Junior');
INSERT INTO `goit_db`.`skills` (`id_skill`,`language`,`level`) VALUES (8,'C#','Middle');
INSERT INTO `goit_db`.`skills` (`id_skill`,`language`,`level`) VALUES (9,'C#','Senior');
INSERT INTO `goit_db`.`companies` (`id_company`, `name_company`) VALUES (1, 'EPAM');
INSERT INTO `goit_db`.`companies` (`id_company`, `name_company`) VALUES (2, 'SofteServe');
INSERT INTO `goit_db`.`companies` (`id_company`, `name_company`) VALUES (3, 'NiX');
INSERT INTO `goit_db`.`companies` (`id_company`, `name_company`) VALUES (4, 'Luxoft');
insert into `goit_db`.`customers` (`id_customers`, `name_customers`) values (1, 'Alfa') , (2, 'Beta') , (3, 'Gama');
insert into `goit_db`.`developers` (`id_developer`,`name_developer`,`age`) values (1, 'Max', 21), (2, 'Vlad', '22'),(3,'Kolya',23) , (4, 'Olia', 19) , (5, 'Nikita', 30);
insert into `goit_db`.`projects` (`id_project` , `name_project`) values (1, 'SpaceX') , (2, 'Balalayka') , (3, 'Sendler') , (4, 'Loader') , (5, 'NoX');
insert into `goit_db`.`companies_has_customers` (`id_company`,`id_customers`) values (1,1) , (2,2) , (3,3) , (4,1);
insert into `goit_db`.`companies_has_projects` (`id_company`,`id_project`) values (1,1), (2,2) ,(3,3) ,(4,4);
insert into `goit_db`.`developers_has_skills` (`id_developer`,`id_skill`) values (1, 2), (2,1),(3,8),(4,9),(5,3);
insert into `goit_db`.`projects_has_developers` (`id_project`,`id_developer`) values (1,1),(5,1),(3,2),(5,2),(2,3);