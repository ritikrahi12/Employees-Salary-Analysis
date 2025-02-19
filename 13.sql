--  Total Salary Paid for Each Job Title
select t1.JobTitle,sum(t2.TotalPay)
from jobs t1
inner join salary t2
on t1.Job_ID=t2.Job_ID
group by t1.JobTitle

