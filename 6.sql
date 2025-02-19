-- Count of Employees in Each Job Title
select t1.JobTitle,count(Employee_ID) As Employee_Count
from salary t2
inner join jobs t1
on t1.Job_Id=t2.Job_ID
group by  t1.JobTitle
order by Employee_Count desc
