CREATE TABLE Employees (
    emp_id INT,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    city VARCHAR(50),
    experience INT
);

INSERT INTO Employees VALUES
(101, 'Rahul', 'IT', 75000, 'Hyderabad', 5),
(102, 'Anjali', 'HR', 45000, 'Chennai', 3),
(103, 'Kiran', 'IT', 82000, 'Bangalore', 6),
(104, 'Sneha', 'Finance', 67000, 'Hyderabad', 4),
(105, 'Aman', 'HR', 39000, 'Pune', 2),
(106, 'Ravi', 'Finance', 91000, 'Mumbai', 8),
(107, 'Divya', 'IT', 55000, 'Chennai', 3),
(108, 'Meena', 'Sales', 48000, 'Bangalore', 2),
(109, 'Arjun', 'Sales', 61000, 'Hyderabad', 5),
(110, 'Pooja', 'IT', 73000, 'Mumbai', 4),
(111, 'Vikas', 'HR', 52000, 'Pune', 3),
(112, 'Nisha', 'Finance', 88000, 'Bangalore', 7),
(113, 'Tarun', 'Sales', 46000, 'Chennai', 2),
(114, 'Kavya', 'IT', 97000, 'Hyderabad', 9),
(115, 'Manoj', 'Finance', 58000, 'Mumbai', 4);

select * from Employees;
select emp_name,salary from Employees;
select emp_name,department from Employees;
select emp_name from Employees where department='IT';
select emp_name,experience from Employees;

#where
select * from Employees where salary>70000;
select emp_name where city='Hyderabad';
select * from Employees where experience<4;
select * from Employees where department='Finance';
select emp_name from Employees where salary=52000;

#group by
select department,sum(salary) as total_salary from Employees group by department;
select department,avg(salary) as total_salary from Employees group by department;
select city,count(*) as count from Employees group by city; 
select department , max(salary) from Employees group by department;
select department , min(experience) from Employees group by department;

#Having
select department , count(*) as count from Employees group by department having  count>3;
select department , avg(salary) from Employees group by department having avg(salary)>60000;
select city,count(*) from Employees group by city having count(*)>2;
select department,sum(salary) from Employees group by department having sum(salary) >200000;
select department , max(salary) group by department having max(salary)> 90000;

#COMPARISON Operators
select emp_name from Employees where salary>=80000;
select emp_name from Employees where experience<=3;
select emp_name from Employees where salary<45000;
select emp_name from Employees where salary<50000;
select emp_name from Employees where experiece>80000;

#Logical Operators
select emp_name from Employees where salary>70000 and department='IT';
select emp_name from Employees where city='Hyderabad' or city='Bangalore';
select emp_name from Employees where department='HR' and experience<3;
select emp_name from Employees where salary>=60000 and experience>6;
select emp_name from Employees where not department='sales';

#IN and NOT
select emp_name from Employees where city in ('Hyderabad', 'Mumbai');
select emp_name from Employees where department in ('IT', 'Finance');
select emp_name from Employees where city not in ('Chennai', 'Pune');
select emp_name from Employees where salary in (45000, 75000, 91000);
select emp_name from Employees where salary in (45000, 75000, 91000);
select emp_name from Employees where department not in ('HR', 'Sales');

#Between
select emp_name from Employees where salary between 50000 and 80000;
select emp_name from Employees where experience between 3 and 6;
select emp_name from Employees where emp_id between 105 and 112;
select emp_name from Employees where salary not between 40000 and 60000;
select emp_name from Employees where experience between 2 and 4;


#Like
select emp_name from Employees where emp_name like 'R%';
select emp_name from Employees where emp_name like '%a';
select emp_name from Employees where emp_name like '%v%';
select emp_name from Employees where emp_name like 'B%';
select emp_name from Employees where emp_name like '%s';



