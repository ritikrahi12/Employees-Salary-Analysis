-- Find the Employee Who Earns the Highest Salary in Each Department
SELECT e.EmployeeName, j.JobTitle, s.TotalPay
FROM Employees e
JOIN Salary s ON e.Employee_ID = s.Employee_ID
JOIN Jobs j ON s.Job_ID = j.Job_ID
WHERE s.TotalPay = (
    SELECT MAX(s2.TotalPay)
    FROM Salary s2
    JOIN Jobs j2 ON s2.Job_ID = j2.Job_ID
    WHERE j2.Job_ID = j.Job_ID

  

