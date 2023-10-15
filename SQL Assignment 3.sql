create database dipika;
use dipika;

select * from sqlass33;

insert into sqlass33 values
('102','kapil','shah','200105','product_executive','50','marketing','1996-05-12','15000.55','1');




1#List the last name, first name and employee number of all 
      'Programmers who were hired on or before 21 May 1991 sorted in ascending order of last name.';

select first_name,last_name,hire_date from sqlass33 where hire_date >='1991-05-21'
order by last_name asc;


2#List the department number, last name and salary of
    # all employees who were hired between 16/09/87 and 12/05/96 
    'sorted in ascending order of last name within department number.';


select department_no,last_name,annual_salary from sqlass33 where Hire_Date between '1987-09-16' and  '1996-05-12'
order by last_name asc, department_no asc;


3#List all the data for each job where the average salary is
' greater than 15000 sorted in descending order of the average salary.';

select Annual_Salary  from sqlass33 where Annual_Salary >=15000 order by  Annual_Salary desc;

select Annual_Salary , avg(annual_salary) from sqlass33 group by Annual_Salary  
having Annual_Salary>=15000;

select Annual_Salary, avg(annual_salary) from sqlass33 group by Annual_Salary;

4#List the last name, first name, job id and commission of employees who 
'earn commission sorted in ascending order of first name. (Commision= Annual_Salary* Commission_Percent)';

select last_name,first_name,job_id,Annual_Salary*commission_percent as commission 
from sqlass33
having Commission > 0 
order by First_Name;


#5Which Job Title are found in the IT and Sales departments?

select job_title, department_name from sqlass33 where Department_Name="it" or "sales";

6#List the last name of all employees in department no 10 and 40 
'together with their monthly salaries (rounded to 2 decimal places), sorted in ascending order of last name.';

select last_name, round(annual_salary/12,2) from sqlass33 where Department_No in(10,40)
order by last_name;

7#Show the Annual Salary salaries displayed with no decimal places.;

select round(annual_salary) as salary from sqlass33;

##########################
#Personnel Department Requirements


8#Show the total number of employees.;

select count(employee_no) from sqlass33;


9#List the department number, department name and the number of
' employees for each department that has more than 2 employees grouping by department number and department name.';


select department_no,department_name,count(distinct employee_no) as employee from sqlass33 
group by department_no,Department_Name 
having employee>2;
 

10#List the department number, department name and the number of employees 
'for the department that has the highest number of employees using appropriate grouping.';

select department_no,department_name,count(distinct employee_no)as employee
from sqlass33 
group by Department_Name 
having employee = (select count(*) from sqlass33
group by department_no order by count(*) desc limit 1);
########################################################


11#List the department number and name for all departments where no programmers work.;

select distinct department_no,department_name from sqlass33 where job_title != 'programmer';
select * from sqlass33;

12#Update all the Annual salaries for jobs with an increase of 1000.

create  table sql33 select * from sqlass33;
update sql33 set annual_salary= annual_salary+1000;

13#List all the data for jobs sorted in ascending order of job id.

select * from sqlass33 order by job_id asc;


14#The job history for employee number 102 is no longer required. Delete this record.
set autocommit=0;
delete  from sql33 where employee_no = '102';
select * from sql33;
rollback;
select * from sqlass33;

15#Prepare a table with percentage raises, employee numbers and old and
' new salaries. Employees in departments 20 and 10 are given a 5% rise, 
employees in departments 50, 90 and 30 are given a 10% rise and employees in other departments are not given a rise.';
select employee_no,
if(department_no in (20,10),5,if(Department_No in(50,90,30),10,0)) 







select employee_no,
if(department_no in (20,10),5,if (department_no in (50,90,30),10,0)) percentage_raise,
annual_salary old_annual_salary,
round(annual_salary*(1+(if(department_no in (20,10),5,if (department_no in (50,90,30),10,0))*0.01)),2) new_annual_salary
from sql33;


16#Create a new view for manager’s details only using all the fields from the employee Tabel.;

create view managers as
select * from sqlass33 where job_title='manager';
select * from managers;


17#Show all the fields and all the managers using the view for managers sorted in ascending order of employee number.

select * from sqlass33;
select * from managers order by employee_no asc;


