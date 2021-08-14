use goit_hw_db;

select projects.name_project, projects.cost
from projects
where cost in (select min(cost) from projects);