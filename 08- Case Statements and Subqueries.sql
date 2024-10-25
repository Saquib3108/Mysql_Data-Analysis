-- Case Statements

SELECT first_name, 
last_name, age,
CASE
	WHEN age <=30 THEN 'YOUNG' 	
END
FROM employee_demographics;


SELECT first_name, 
last_name, age,
CASE
	WHEN age <=35 THEN 'Young'
    WHEN age BETWEEN 35 AND 50 THEN 'Old'
    WHEN age >50 THEN 'Too Old'
 	
END AS Age_Bracket
FROM employee_demographics;



-- pay increase and Bonus
-- < 50000 = 5%
-- > 50000 = 7%
-- Finance = 10% bonus

SELECT first_name, last_name, salary,
CASE 
	WHEN salary < 50000 THEN salary * 1.05
    WHEN salary > 50000 THEN salary * 1.07
END AS New_salary,
CASE 
	WHEN dept_id = 6 THEN salary * .10
END AS Bonus
FROM employee_salary;


-- SUBQUERIES

SELECT * 
FROM employee_demographics
WHERE employee_id IN
					(SELECT employee_id
						FROM employee_salary
                        WHERE dept_id=1);


-- AVERAGE SALARY OF EMPLOYEE
SELECT first_name, salary, 
(SELECT AVG(salary)
FROM employee_salary)
FROM employee_salary;


SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender;

SELECT AVG(max_age)
FROM
(SELECT gender,
 AVG(age) AS avg_age,
 MAX(age) AS max_age, 
 MIN(age) AS min_age,
 COUNT(age) 
FROM employee_demographics
GROUP BY gender) AS Agg_table;
