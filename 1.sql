CREATE TABLE Employees (
    Employee_ID INT PRIMARY KEY AUTO_INCREMENT,
    EmployeeName VARCHAR(100)
);

CREATE TABLE Jobs (
    Job_ID INT PRIMARY KEY AUTO_INCREMENT,
    Job_Title VARCHAR(100)
);

CREATE TABLE Salaries (
    Job_ID INT,
    Employee_ID INT,
    BasePay INT,
    OvertimePay DECIMAL(10,2),
    OtherPay DECIMAL(10,2),
    Benefits VARCHAR(100),
    TotalPay DECIMAL(10,2),
    TotalPayBenefits DECIMAL(10,2),
    Year INT,
    FOREIGN KEY (Employee_ID) REFERENCES Employees(Employee_ID) ON DELETE CASCADE,
    FOREIGN KEY (Job_ID) REFERENCES Jobs(Job_ID) ON DELETE CASCADE
);





