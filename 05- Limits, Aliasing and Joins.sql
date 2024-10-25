-- LIMIT And ALIASING

Select * 
from employee_demographics
order by age desc
limit 2, 1;

-- Aliasing

select gender, avg(age)
from employee_demographics
group by gender
having avg(age)>40;

-- JOINS

select * 
from employee_demographics;


select * 
from employee_salary;


select dem.employee_id, age, occupation
from employee_demographics as dem
Inner join employee_salary as sal
	on dem.employee_id=sal.employee_id;
    
-- OUTER JOINS

select *
from employee_demographics as dem
right join employee_salary as sal
	on dem.employee_id=sal.employee_id;
    
-- SELF JOIN

select emp1.employee_id as emp_santa,
emp1.first_name as first_name_santa,
emp1.last_name as last_name_santa,
emp2.employee_id as emp_name,
emp2.first_name as first_name_emp,
emp2.last_name as last_name_emp 
from employee_salary emp1
join employee_salary emp2
	on emp1.employee_id = emp2.employee_id
;


-- JOINING MULTIPLE TABLES TOGETHER

select *
from employee_demographics as dem
Inner join employee_salary as sal
	on dem.employee_id=sal.employee_id
inner join parks_departments pd	
	on sal.dept_id = pd.department_id
;

select * 
from parks_departments;
    
    