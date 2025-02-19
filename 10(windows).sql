-- Find the Employee Who Earns the Highest Salary in Each Department
select EmployeeName,JobTitle,TotalPay
from( select t1.EmployeeName,t2.JobTitle,t3.TotalPay,
rank() over ( partition by t2.Job_ID order by t3.TotalPay desc) As Ranks
from employees t1
inner join salary t3
on t1.Employee_ID=t3.Employee_ID
inner join jobs t2
on t2.Job_ID=t3.Job_ID) ranked
where Ranks= 1