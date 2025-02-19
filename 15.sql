-- Find the Department with the Highest Average Salary
select JobTitle,Average_Salary
from ( select t1.JobTitle,avg(t2.TotalPay) As Average_Salary,
rank() over( order by avg(t2.TotalPay) desc) As Ranks
from salary t2
inner join jobs t1
on t1.Job_ID=t2.Job_ID
group by t1.JobTitle) ranked
where Ranks =1



