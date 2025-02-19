-- Retrieve Employee Names with Their Job Titles
select t1.EmployeeName,t2.JobTitle
from salary t3
inner join jobs t2
on t2.Job_ID=t3.Job_ID
inner join employees t1
on t1.Employee_ID= t3.Employee_ID

