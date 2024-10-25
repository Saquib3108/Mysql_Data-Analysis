-- GROUP BY

Select *
from employee_demographics;



Select gender
from employee_demographics
group by gender;


Select gender, avg(age)
from employee_demographics
group by gender;



Select occupation,salary
from employee_salary
group by occupation,salary;


Select gender, avg(age), max(age), min(age), count(age)
from employee_demographics
group by gender;


-- ORDER BY
Select *
from employee_demographics
order by gender, age;

Select *
from employee_demographics
order by 5, 4;

