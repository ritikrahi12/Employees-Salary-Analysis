-- Find Total Salary(TotalPayBenefits) Paid Per Job Title
select t1.JobTitle,sum(TotalPayBenefits) As Total_Salary
from salary t2
inner join jobs t1
on t1.Job_ID=t2.Job_ID
group by t1.JobTitle
order by Total_Salary desc

