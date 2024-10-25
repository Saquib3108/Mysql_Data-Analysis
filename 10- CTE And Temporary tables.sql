-- Advanced SQL
-- CTe Common table expression

WITH CTE_Example (Gender, AVG_Sal, MAX_Sal, MIN_Sal, COUNT_Sal) AS
(SELECT gender,
 AVG(salary) avg_sal,
 MAX(salary) max_sal,
 MIN(salary) min_sal,
 COUNT(salary) count_sal
FROM employee_demographics AS dem 
JOIN employee_salary AS sal
	ON dem.employee_id= sal.employee_id
GROUP BY gender
)
SELECT *
FROM CTE_Example
;




WITH CTE_Example AS
(
SELECT employee_id, gender, birth_date
FROM employee_demographics 
WHERE birth_date > '1985-01-01'
),
CTE_Example2 AS
(
SELECT employee_id, salary
FROM employee_salary
WHERE salary > 50000
)
SELECT *
FROM CTE_Example
JOIN CTE_Example2
	ON CTE_Example.employee_id= CTE_Example2.employee_id
;

-- Temporary Tables

CREATE TEMPORARY TABLE temp_table
(first_name varchar(50),
last_name varchar(25),
favorite_movie varchar(40)
);


INSERT INTO temp_table
VALUES('Saquib', 'Konana', 'Game Of Thrones');

SELECT *
FROM temp_table;

-- Temp table another way of creating

SELECT *
FROM employee_salary;

CREATE TEMPORARY TABLE salary_over_50k
select *
from employee_salary
where salary >= 50000;

SELECT *
FROM salary_over_50k; 