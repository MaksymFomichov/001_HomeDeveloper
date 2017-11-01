CREATE TABLE developers (
  id   INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE skills (
  id    INT AUTO_INCREMENT PRIMARY KEY,
  skill VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE projects (
  id      INT AUTO_INCREMENT PRIMARY KEY,
  project VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE companies (
  id      INT AUTO_INCREMENT PRIMARY KEY,
  compani VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE customers (
  id       INT AUTO_INCREMENT PRIMARY KEY,
  customer VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE `developers_skills` (
  `developers_id` INT,
  `skills_id`     INT,
  PRIMARY KEY (`developers_id`, `skills_id`),
  CONSTRAINT fk_id_developer FOREIGN KEY (developers_id) REFERENCES developers (id),
  CONSTRAINT fk_id_skill FOREIGN KEY (skills_id) REFERENCES skills (id)
);

CREATE TABLE `developers_projects` (
  `developers_id` INT,
  `projects_id`   INT,
  PRIMARY KEY (`developers_id`, `projects_id`),
  CONSTRAINT fk_id_developer_project FOREIGN KEY (developers_id) REFERENCES developers(id),
  CONSTRAINT fk_id_project FOREIGN KEY (projects_id) REFERENCES projects(id)
);

CREATE TABLE `companies_projects` (
  `companies_id` INT,
  `projects_id`  INT,
  PRIMARY KEY (`companies_id`, `projects_id`),
  CONSTRAINT fk_id_company FOREIGN KEY (companies_id) REFERENCES companies(id),
  CONSTRAINT fk_id_project_company FOREIGN KEY (projects_id) REFERENCES projects(id)
);

CREATE TABLE `customers_projects` (
  `customers_id` INT,
  `projects_id`  INT,
  PRIMARY KEY (`customers_id`, `projects_id`),
  CONSTRAINT fk_id_customer FOREIGN KEY (customers_id) REFERENCES customers(id),
  CONSTRAINT fk_id_project_customer FOREIGN KEY (projects_id) REFERENCES projects(id)
);