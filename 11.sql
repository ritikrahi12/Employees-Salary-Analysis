-- Find the Second Highest Salary
select max(TotalPay) As Second_Highest_Salary
from salary 
where TotalPay<(select max(TotalPay) from salary)

