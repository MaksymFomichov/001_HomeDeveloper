CREATE TABLE developer (
  id   INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50)
);
CREATE TABLE skills (
  id    INT AUTO_INCREMENT PRIMARY KEY,
  skill VARCHAR(50)
);
CREATE TABLE `developers_skills` (
  `developers_id` INT,
  `skills_id`    INT,
  PRIMARY KEY (`developers_id`, `skills_id`)
);
CREATE TABLE projects (
  id      INT AUTO_INCREMENT PRIMARY KEY,
  project VARCHAR(50)
);
CREATE TABLE `developers_projects` (
  `developers_id` INT,
  `projects_id`  INT,
  PRIMARY KEY (`developers_id`, `projects_id`)
);
CREATE TABLE companies (
  id      INT AUTO_INCREMENT PRIMARY KEY,
  compani VARCHAR(50)
);
CREATE TABLE `companies_projects` (
  `companies_id` INT,
  `projects_id`  INT,
  PRIMARY KEY (`companies_id`, `projects_id`)
);
CREATE TABLE `companies_developers` (
  `companies_id` INT,
  `developers_id`  INT,
  PRIMARY KEY (`companies_id`, `developers_id`)
);
CREATE TABLE customers (
  id       INT AUTO_INCREMENT PRIMARY KEY,
  customer VARCHAR(50)
);
CREATE TABLE `customers_projects` (
  `customers_id` INT,
  `projects_id`  INT,
  PRIMARY KEY (`customers_id`, `projects_id`)
);