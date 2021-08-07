use goit_db;

SELECT p.name_project, avg(d.salary)
FROM developers d, projects p, projects_has_developers pd
where d.id_developer=pd.id_developer and p.id_project=pd.id_project and p.id_project in
(SELECT id_project FROM projects where cost in
(select min(cost) from projects));