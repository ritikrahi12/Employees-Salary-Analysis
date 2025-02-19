-- Find the Highest Salary, Lowest Salary, and Average Salary in Each Department
select distinct t1.JobTitle As Department,
first_value(t2.TotalPay) over ( partition by t1.JobTitle order by t2.TotalPay desc) As Highest_Salary,
first_value(t2.TotalPay) over ( partition by t1.JobTitle order by t2.TotalPay asc) As Lowest_Salary,
avg(t2.TotalPay) over ( partition by t1.JobTitle) As Average_Salary
from Salary t2
inner join jobs t1
on t1.Job_ID=t2.Job_ID




