/* Найти самый дорогой проект (исходя из ЗП разработчиков) */

SELECT
  project,
  sum(salary)
FROM developers_projects
  JOIN developers ON developers.id = developers_projects.developers_id
  JOIN projects ON projects.id = developers_projects.projects_id
GROUP BY project
ORDER BY sum(salary) DESC