CREATE DATABASE IF NOT EXISTS gadis CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE gadis;

CREATE TABLE IF NOT EXISTS mandates (
    id INT AUTO_INCREMENT PRIMARY KEY,
    genderIssue VARCHAR(300) NOT NULL,
);

CREATE TABLE IF NOT EXISTS departments (
    id INT AUTO_INCREMENT PRIMARY KEY,
    departmentName VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS department_users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    department_id INT,
    username INT,
    password VARCHAR(255) NOT NULL,
    IfAdmin BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (department_id) REFERENCES departments(id)
);

CREATE TABLE IF NOT EXISTS workers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(id)
);

CREATE TABLE IF NOT EXISTS salaries (
    id INT AUTO_INCREMENT PRIMARY KEY,
    worker_id INT,
    amount DECIMAL(10, 2) NOT NULL,
    effective_date DATE NOT NULL,
    FOREIGN KEY (worker_id) REFERENCES workers(id)
);

CREATE TABLE IF NOT EXISTS yearly_budgets (
    id INT AUTO_INCREMENT PRIMARY KEY,
    department_id INT,
    year INT NOT NULL,
    total_budget DECIMAL(15, 2) NOT NULL,
    FOREIGN KEY (department_id) REFERENCES departments(id)
);

CREATE TABLE IF NOT EXISTS accomplishment_reports (
    id INT AUTO_INCREMENT PRIMARY KEY,
    mandate_id INT,
    department_id INT
    report_date DATE,
    HGDGToolScore FLOAT,
    NameOfWorker VARCHAR(255),
    ActivityReport TEXT,
    BudgetForActivity DECIMAL(10, 2),
    FOREIGN KEY (mandate_id) REFERENCES mandates(id),
    FOREIGN KEY (department_id) REFERENCES departments(id),
    FOREIGN KEY (NameOfWorker) REFERENCES workers(name)
);