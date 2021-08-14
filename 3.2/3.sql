use goit_hw_db;

select s.language as program_language, sum(d.salary) total
from developers d, skills s, developers_skills ds
where s.language = 'Java' and d.id_developer = ds.id_developer and s.id_skill = ds.id_skill;