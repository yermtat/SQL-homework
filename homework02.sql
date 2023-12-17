CREATE Database Academy2;
go;

Use Academy2;
go;

CREATE TABLE Groups(
    Id INT PRIMARY KEY IDENTITY(1, 1),
    Name nvarchar(10) NOT NULL UNIQUE CHECK(Name LIKE '_%'),
    Rating INT NOT NULL CHECK(Rating >=0 AND Rating <= 5),
    Year INT NOT NULL CHECK(Year >=1 AND Year <=5)
);
go;

insert into Groups (Name, Rating, Year) values ('Beta1', 2, 2);
insert into Groups (Name, Rating, Year) values ('Alpha2', 0, 3);
insert into Groups (Name, Rating, Year) values ('Delta3', 0, 1);
insert into Groups (Name, Rating, Year) values ('Kappa4', 0, 5);
insert into Groups (Name, Rating, Year) values ('Beta5', 3, 1);
insert into Groups (Name, Rating, Year) values ('Theta6', 1, 1);
insert into Groups (Name, Rating, Year) values ('Gamma7', 2, 3);
insert into Groups (Name, Rating, Year) values ('Delta8', 5, 3);
insert into Groups (Name, Rating, Year) values ('Zeta9', 3, 3);
insert into Groups (Name, Rating, Year) values ('Iota0', 2, 2);
insert into Groups (Name, Rating, Year) values ('Iota10', 1, 3);
insert into Groups (Name, Rating, Year) values ('Kappa11', 1, 1);
insert into Groups (Name, Rating, Year) values ('Epsilon12', 2, 1);
insert into Groups (Name, Rating, Year) values ('Gamma13', 1, 4);
insert into Groups (Name, Rating, Year) values ('Kappa14', 1, 1);
insert into Groups (Name, Rating, Year) values ('Delta15', 0, 5);
insert into Groups (Name, Rating, Year) values ('Epsilon16', 4, 3);
insert into Groups (Name, Rating, Year) values ('Theta17', 4, 4);
go;

SELECT *
FROM Groups;
GO;

CREATE TABLE Departments(
    Id INT PRIMARY KEY IDENTITY(1, 1),
    Financing MONEY NOT NULL CHECK( Financing >= 0) DEFAULT 0,
    Name NVARCHAR(100) NOT NULL CHECK(Name LIKE '_%') UNIQUE
);
GO;

insert into Departments (Financing, Name) values ('$730548.65', 'Human Resources');
insert into Departments (Financing, Name) values ('$306039.14', 'Training');
insert into Departments (Financing, Name) values ('$612588.44', 'Engineering');
insert into Departments (Financing, Name) values ('$269102.44', 'Services');
insert into Departments (Financing, Name) values ('$31138.49', 'Product Management');
insert into Departments (Financing, Name) values ('$386685.57', 'Legal');
insert into Departments (Financing, Name) values ('$708912.62', 'Sales');
insert into Departments (Financing, Name) values ('$409210.15', 'Accounting');
insert into Departments (Financing, Name) values ('$990793.24', 'Marketing');
insert into Departments (Financing, Name) values ('$126942.23', 'Research and Development');
GO;


SELECT *
FROM Departments;
GO;

CREATE TABLE Faculties(
    Id INT PRIMARY KEY IDENTITY(1, 1),
    Dean NVARCHAR(MAX) NOT NULL CHECK(Dean LIKE '_%'),
    Name NVARCHAR(100) NOT NULL CHECK(Name LIKE '_%') UNIQUE
);
GO;

insert into Faculties (Dean, Name) values ('Nichols Pitone', 'Mathematics');
insert into Faculties (Dean, Name) values ('Jack Berney', 'English');
insert into Faculties (Dean, Name) values ('Patti Hanigan', 'Computer Science');
insert into Faculties (Dean, Name) values ('Reid Solomon', 'History');
insert into Faculties (Dean, Name) values ('Meredithe Kill', 'Biology');
insert into Faculties (Dean, Name) values ('Ivie Aspinal', 'Chemistry');
insert into Faculties (Dean, Name) values ('Broddy Olech', 'Physics');
insert into Faculties (Dean, Name) values ('Vince Lamond', 'Psychology');
insert into Faculties (Dean, Name) values ('Whittaker Jozsef', 'Sociology');
insert into Faculties (Dean, Name) values ('Vidovik Dulinty', 'Economics');
GO;


SELECT *
FROM Faculties;
GO;

CREATE TABLE Teachers(
    Id INT PRIMARY KEY IDENTITY(1, 1),
    EmploymentDate DATE NOT NULL CHECK(EmploymentDate > '01-01-1990'),
    IsAssistant BIT NOT NULL DEFAULT 0,
    IsProfessor BIT NOT NULL DEFAULT 0,
    Name NVARCHAR(MAX) NOT NULL CHECK(Name LIKE '_%'),
    Premium MONEY NOT NULL CHECK(Premium >= 0) DEFAULT 0,
    Salary MONEY NOT NULL CHECK(Salary > 0),
    Surname NVARCHAR(MAX) NOT NULL CHECK(Surname LIKE '_%')
);
GO;


insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname) values ('03/19/2021', 0, 0, 'Gayel', '$451.76', '$4207.01', 'Greenwell');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname) values ('03/01/2017', 1, 0, 'Xymenes', '$680.12', '$4545.68', 'Chatain');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname) values ('02/26/2013', 1, 1, 'Benji', '$446.98', '$1552.79', 'Bullimore');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname) values ('09/07/1994', 0, 0, 'Barn', '$54.12', '$3237.94', 'Moggan');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname) values ('04/05/2019', 1, 0, 'Hussein', '$426.36', '$477.21', 'Motion');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname) values ('01/19/2006', 0, 0, 'Stefania', '$992.55', '$1095.34', 'Spickett');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname) values ('01/25/2016', 0, 0, 'Waverley', '$125.34', '$3953.07', 'Capun');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname) values ('03/16/1994', 1, 1, 'Carol', '$500.17', '$1221.48', 'Oxer');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname) values ('09/30/2006', 1, 0, 'Melicent', '$508.54', '$2418.94', 'Unwin');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname) values ('06/15/2017', 1, 1, 'Aubree', '$358.55', '$1670.20', 'Orthmann');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname) values ('04/03/2013', 0, 0, 'Eustacia', '$508.88', '$2669.99', 'Salerno');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname) values ('08/11/2009', 1, 1, 'Shalom', '$816.03', '$524.74', 'Dowyer');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname) values ('05/16/2006', 1, 0, 'Karlene', '$607.03', '$3232.47', 'Matousek');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname) values ('07/11/2022', 0, 1, 'Aurea', '$816.47', '$4777.94', 'Matys');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname) values ('08/24/2013', 1, 1, 'Kali', '$393.43', '$2157.72', 'Stopps');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname) values ('04/30/1991', 0, 1, 'Elwin', '$265.16', '$4677.33', 'Gonnel');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname) values ('05/31/2019', 1, 0, 'Meris', '$104.18', '$796.06', 'Kubera');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname) values ('10/29/2012', 1, 1, 'Agnola', '$833.55', '$4784.27', 'Michin');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname) values ('10/14/1997', 0, 0, 'Verge', '$488.06', '$4364.41', 'Gomme');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname) values ('05/02/1998', 1, 1, 'Ralph', '$329.92', '$4538.34', 'Farman');
GO;

SELECT *
FROM Teachers;
GO;


SELECT *
FROM Departments
ORDER BY  Id DESC;
GO;

SELECT Name AS 'Group Name', Rating AS 'Group Rating'
FROM Groups;
GO;

SELECT Surname, 'Salary/Premium' = Salary * 100 / Premium, 'Salary/(Salary + Premium)' = Salary * 100 / (Salary + Premium)
FROM Teachers;
GO;