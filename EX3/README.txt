THE FIRST TIME THE COMPANY DATABASE MUST BE CREATED.
AFTER THAT THE COMPANY TABLE MUST BE IMPORTED


COMMANDS IN SQL

CREATE USER 'username'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON company.* TO 'username'@'localhost';
FLUSH PRIVILEGES;
SELECT department, AVG(salary) AS average_salary
FROM employees
GROUP BY department;