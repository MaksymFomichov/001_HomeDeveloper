/*Найти клиента (customer), которая приносит меньше всего прибыли компании (company)
 для каждой из компаний .*/

SELECT
  compani,
  customer,
  project,
  min(cost)
FROM (
       SELECT
         customers_projects.customers_id AS id_customer,
         companies_projects.projects_id  AS id_project,
         companies_projects.companies_id AS id_company
       FROM customers_projects
         LEFT JOIN companies_projects ON customers_projects.projects_id = companies_projects.projects_id

       UNION

       SELECT
         customers_projects.customers_id,
         companies_projects.projects_id,
         companies_projects.companies_id
       FROM customers_projects
         RIGHT JOIN companies_projects ON customers_projects.projects_id = companies_projects.projects_id
     ) AS tableMain

  LEFT JOIN projects ON tableMain.id_project = projects.id
  LEFT JOIN companies ON tableMain.id_company = companies.id
  LEFT JOIN customers ON tableMain.id_customer = customers.id
GROUP BY id_customer, id_company
ORDER BY id_company;