-- Which employees have OvertimePay greater than the average OvertimePay?
select t1.EmployeeName,t2.JobTitle,t3.OvertimePay
from salary t3
inner join jobs t2
on t2.Job_Id=t3.Job_ID
inner join employees t1
on t1.Employee_ID=t3.Employee_ID
where t3.OvertimePay>(select avg(OvertimePay)from salary)