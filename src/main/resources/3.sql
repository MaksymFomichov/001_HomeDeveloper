/*Вычислить общую ЗП всех Java разработчиков. */

SELECT sum(salary)
FROM skills, developers, developers_skills
WHERE developers_skills.developers_id = developers.id AND
      developers_skills.skills_id = skills.id AND
      skills.skill = "java"
GROUP BY skills.skill

