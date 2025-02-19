-- Count number of Employees in Each department( JobTitle)
select t1.JobTitle,count(t2.Employee_ID) As Employee_Count
from employees t2
inner join salary t3
on t2.Employee_ID=t3.Employee_ID
inner join jobs t1
on t1.Job_ID=t3.Job_ID
group by t1.JobTitle
order by Employee_Count desc


