use goit_db;

select p.name_project as project_name , sum(d.salary) totalCost
from  developers d, projects p, projects_has_developers pd
where d.id_developer = pd.id_developer and p.id_project = pd.id_project
group by p.name_project
order by totalCost desc
limit 1;

