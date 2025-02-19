-- Find Employees Who Have Never Received a Bonus (OtherPay = 0)
select t1.EmployeeName,t2.OtherPay
from salary t2
inner join employees t1
on t1.Employee_ID=t2.Employee_ID
where t2.OtherPay=0
