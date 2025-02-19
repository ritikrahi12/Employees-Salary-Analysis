 -- Get Employee Name, Job Title, and Total Pay
 select t2.EmployeeName,t3.JobTitle,t1.TotalPay
 from salary t1
 inner join employees t2
 on t1.Employee_ID=t2.Employee_ID
 inner join jobs t3
 on t3.Job_ID=t1.Job_ID
 limit 10