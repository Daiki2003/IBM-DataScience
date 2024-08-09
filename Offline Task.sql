-- Section 1

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department_id INT
);

CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100)
);

CREATE TABLE assignments (
    assignment_id INT PRIMARY KEY,
    employee_id INT,
    project_id INT,
    hours_worked INT
);

-- Section 2

INSERT INTO departments (department_id, department_name) VALUES 
(1, 'Human Resources'), 
(2, 'Engineering'), 
(3, 'Marketing');

INSERT INTO employees (employee_id, first_name, last_name, department_id) VALUES 
(1, 'John', 'Doe', 1), 
(2, 'Jane', 'Smith', 2), 
(3, 'Alice', 'Johnson', 3), 
(4, 'Bob', 'Brown', 2);

INSERT INTO projects (project_id, project_name) VALUES 
(1, 'Project Alpha'), 
(2, 'Project Beta'), 
(3, 'Project Gamma');

INSERT INTO assignments (assignment_id, employee_id, project_id, hours_worked) VALUES 
(1, 1, 1, 20), 
(2, 2, 2, 30), 
(3, 3, 3, 25), 
(4, 4, 1, 15), 
(5, 2, 3, 10);

-- Section 3
--INNER JOIN: Returns only the rows with matching values in both tables.
--LEFT JOIN: Returns all rows from the left table, with NULL for non-matching rows in the right table.
-- RIGHT JOIN: Returns all rows from the right table, with NULL for non-matching rows in the left table.
-- FULL OUTER JOIN: Returns all rows from both tables, with NULL for non-matching rows in either table.
-- CROSS JOIN: Returns the Cartesian product of all rows from both tables.
-- NATURAL JOIN: Automatically joins tables based on columns with the same name and data type.


-- 2. Table Aliases
SELECT e.employee_id, e.first_name, e.last_name
FROM employees AS e;

-- 3. Inner Join
SELECT e.first_name, e.last_name, d.department_name
FROM employees AS e
INNER JOIN departments AS d ON e.department_id = d.department_id;

-- 4. Left Join
SELECT e.first_name, e.last_name, d.department_name
FROM employees AS e
LEFT JOIN departments AS d ON e.department_id = d.department_id;

-- 5. Self-Join
SELECT e1.first_name AS Employee1, e2.first_name AS Employee2, d.department_name
FROM employees AS e1
INNER JOIN employees AS e2 ON e1.department_id = e2.department_id AND e1.employee_id <> e2.employee_id
INNER JOIN departments AS d ON e1.department_id = d.department_id;

-- 6. Full Outer Join
SELECT e.first_name, e.last_name, d.department_name
FROM employees AS e
FULL OUTER JOIN departments AS d ON e.department_id = d.department_id;

-- 7. Cross Join
SELECT e.first_name, p.project_name
FROM employees AS e
CROSS JOIN projects AS p;

-- 8. Natural Join
SELECT e.first_name, e.last_name, d.department_name
FROM employees AS e
NATURAL JOIN departments AS d;

