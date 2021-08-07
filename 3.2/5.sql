use goit_db;

select name_project, cost from projects where cost in
(select min(cost) from projects);