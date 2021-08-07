use goit_db;

select s.language as program_language, sum(d.salary) Total
from skills s, developers d, developers_has_skills ds
where s.language='Java' and s.id_skill = ds.id_skill and d.id_developer = ds.id_developer;
