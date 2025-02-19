 -- Find Employees Who Earn More Than the Average Total Pay for Their Department
 select t1.EmployeeName,t2.TotalPay,t3.JobTitle
 from salary t2
 inner join employees t1
 on t1.Employee_Id= t2.Employee_ID
 inner join jobs t3
 on t3.Job_Id=t2.Job_ID
 where TotalPay >(select avg(TotalPay) from salary)
 
 
 