use goit_hw_db;

ALTER TABLE goit_hw_db.projects 
ADD COLUMN cost INT NOT NULL AFTER name_project;


update goit_hw_db.projects set cost = 10000 where (id_project = 1);
update goit_hw_db.projects set cost = 12000 where (id_project = 2);
update goit_hw_db.projects set cost = 11000 where (id_project = 3);
update goit_hw_db.projects set cost = 10001 where (id_project = 4);
update goit_hw_db.projects set cost = 10200 where (id_project = 5);