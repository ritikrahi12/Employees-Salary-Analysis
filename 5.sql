-- Get Employees Who Earn More Than ₹1,80,000 as TotalPay
select t1.EmployeeName,t2.TotalPay
from salary t2
inner join employees t1
on t1.Employee_ID=t2.Employee_ID
where t2.TotalPay > 180000


