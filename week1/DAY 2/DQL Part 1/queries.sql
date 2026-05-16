--SELECT
--Display all employee details.
select * from Employees;

--Display only employee names and salaries.
select emp_name,salary from Employees;

--Display employee names and departments.
select emp_name,department from Employees;

--Display all employees from the IT department.
select emp_name
from Employees
where department='IT';

--Display employee names and experience.
select emp_name,experience from Employees;

--WHERE
--Find employees with salary greater than 70000.
select emp_name
from Employees
where salary>70000;

--Find employees working in Hyderabad.
select emp_name
from Employees
where city='Hyderabad';

--Find employees with experience less than 4 years.
select *
from Employees
where experience<4;

--Find employees from Finance department.
select *
from Employees
where department='Finance'; 

--Find employees whose salary is equal to 52000.
select *
from Employees
where salary=52000;

--GROUP BY
--Find total salary department-wise.
select department, sum(salary) as sum_salary
from Employees
group by department;

--Find average salary in each department.
select department, avg(salary) as avg_salary
from Employees
group by department;

--Count employees in each city.
select city, count(emp_id) as no_of_employees
from Employees
group by city;

--Find maximum salary in each department.
select department, max(salary) as max_salary
from Employees
group by department;

--Find minimum experience department-wise.
select department, min(experience) as min_experirence
from Employees
group by department;

--HAVING
--Find departments having more than 3 employees.
select department, count(emp_id) as no_of_employees
from Employees
group by department
having count(emp_id)>3;

--Find departments where average salary is greater than 60000.
select department, avg(salary) as avg_salary
from Employees
group by department
having avg(salary)>60000;

--Find cities having more than 2 employees.
select city, count(emp_id) as no_of_employees
from Employees
group by city
having count(emp_id)>2;

--Find departments where total salary is greater than 200000.
select department, sum(salary) as sum_salary
from Employees
group by department
having sum(salary)>200000;

--Find departments where maximum salary is above 90000.
select department, max(salary) as max_salary
from Employees
group by department
having max(salary)>90000;

--TOP
--Display top 5 highest paid employees.
select *
from Employees
order by salary desc
limit 5;

--Display top 3 employees with highest experience.
select *
from Employees
order by experience desc
limit 3;

--Display top 2 salaries from Finance department.
select salary
from Employees
where department='Finance'
order by salary desc
limit 2;

--Display top 4 employees from Hyderabad.
select *
from Employees
where city='Hyderabad'
limit 4;

--Display top 1 highest salary employee.
select *
from Employees
order by salary desc
limit 1;

--DISTINCT
--Display distinct department names.
select distinct department
from Employees;

--Display distinct city names.
select distinct city
from Employees;

--Display distinct salary values.
select distinct salary
from Employees;

--Display distinct combinations of department and city.
select distinct department,city
from Employees;

--Display distinct experience values.
select distinct experience
from Employees;

--COMPARISON OPERATORS
--Find employees with salary >= 80000.
select *
from Employees
where salary >= 80000 ;

--Find employees with experience <= 3.
select *
from Employees
where experience<=3 ;

--Find employees whose salary <> 45000(not equal to).
select *
from Employees
where salary <> 45000;

--Find employees with salary < 50000.
select *
from Employees
where salary < 50000;

--Find employees with experience > 5.
select *
from Employees
where experience>5;

--Logical Operators
--Find employees from IT department AND salary greater than 70000.
select *
from Employees
where department='IT' and salary>70000;

--Find employees from Hyderabad OR Bangalore.
select *
from Employees
where city='Hyderabad' or city='Bangalore';

--Find employees from HR department AND experience less than 3.
select *
from Employees
where department='HR' and experience<3;

--Find employees with salary greater than 60000 OR experience greater than 6.
select *
from Employees
where salary>60000 or experience>3;

--Find employees NOT from Sales department.
select *
from Employees
where not department='Sales';
select *
from Employees
where department<>'Sales';

--IN AND NOT IN
--Find employees working in ('Hyderabad', 'Mumbai').
select *
from Employees
where city in ('Hyderabad','Mumbai');

--Find employees whose department IN ('IT', 'Finance').
select *
from Employees
where department in ('IT', 'Finance');

--Find employees whose city NOT IN ('Chennai', 'Pune').
select *
from Employees
where city not in('Chennai','Pune');

--Find employees whose salary IN (45000, 75000, 91000).
select *
from Employees
where salary in (45000, 75000, 91000);

--Find employees whose department NOT IN ('HR', 'Sales').
select *
from Employees
where department not in ('HR','Sales');

--BETWEEN
--Find employees with salary BETWEEN 50000 AND 80000.
select *
from Employees
where salary between 50000 and 80000;
select *
from Employees
where salary>=50000 and salary<=80000;

--Find employees with experience BETWEEN 3 AND 6.
select *
from Employees
where experience between 3 and 6;

--Find employees whose emp_id BETWEEN 105 AND 112.
select *
from Employees
where emp_id between 105 and 112;

--Find employees with salary NOT BETWEEN 40000 AND 60000.
select *
from Employees
where not salary  between 40000 and 60000;

--Find employees with experience BETWEEN 2 AND 4.
select *
from Employees
where experience between 2 and 4;

--LIKE OPERATOR
--Find employees whose names start with 'R'.
select *
from Employees
where emp_name like 'R%';

--Find employees whose names end with 'a'.
select *
from Employees
where emp_name like '%a';

--Find employees whose names contain 'v'.
select *
from Employees
where emp_name like '%v%';

--Find employees whose city starts with 'B'.
select *
from Employees
where city like 'B%';

--Find employees whose department ends with 's'.
select *
from Employees
where department like '%s';
