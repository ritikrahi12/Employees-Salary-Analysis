-- Find the Employees Earning More Than the Average Salary
select EmployeeName,TotalPay
from ( select t1.EmployeeName, t2.TotalPay, avg(t2.TotalPay) over () As Average_Salary
from Employees t1
inner join Salary t2
on t1.Employee_ID=t2.Employee_ID) sub
where TotalPay > Average_Salary
