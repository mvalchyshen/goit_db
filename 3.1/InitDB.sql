drop database if exists goit_hw_db;
create database if not exists goit_hw_db;

use goit_hw_db;

drop table if exists companies;
create table `companies` (
`id_company` int not null auto_increment,
`name_company` varchar(255) not null,
primary key (`id_company`)
);

drop table if exists customers;
create table `customers` (
`id_customer` int not null auto_increment,
`name_customer` varchar(255) not null,
primary key (`id_customer`)
);

drop table if exists developers;
create table `developers`(
`id_developer` int not null auto_increment,
`name_developer` varchar(45) not null,
`age` int not null,
primary key (`id_developer`)
);

drop table if exists projects;
create table `projects`(
`id_project` int not null auto_increment,
`name_project`  varchar(255) not null,
primary key (`id_project`)
);

drop table if exists skills;
create table `skills` (
`id_skill` int not null auto_increment,
`language` enum('Java', 'C++','C#', 'JS') not null,
`level` enum('Junior', 'Middle', 'Senior') not null,
primary key (`id_skill`)
);

drop table if exists companies_customers;
create table companies_customers(
`id_company` int not null,
`id_customer` int not null,
primary key (`id_company`,`id_customer`),
foreign key (`id_company`) references companies(`id_company`),
foreign key (`id_customer`) references customers (`id_customer`)
);

drop table if exists companies_projects;
create table companies_projects(
`id_company`int not null,
`id_project`int not null,
primary key(`id_company`,`id_project`),
foreign key (`id_company`) references companies(`id_company`),
foreign key (`id_project`) references projects (`id_project`)
);

drop table if exists developers_skills;
create table developers_skills(
`id_developer` int not null,
`id_skill` int not null,
primary key(`id_developer`,`id_skill`),
foreign key(`id_developer`) references developers(`id_developer`),
foreign key(`id_skill`) references skills(`id_skill`)
);

drop table if exists projects_developers;
create table projects_developers(
`id_project` int not null,
`id_developer` int not null,
primary key(`id_project`,`id_developer`),
foreign key(`id_project`) references projects(`id_project`),
foreign key(`id_developer`) references developers(`id_developer`)
);
