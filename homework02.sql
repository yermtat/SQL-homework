Use Academy;
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
insert into Groups (Name, Rating, Year) values ('Theta18', 4, 5);
go;

SELECT *
FROM Groups;
GO;


ALTER TABLE Departments
ALTER COLUMN Name NVARCHAR(100);
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
insert into Departments (Financing, Name) values ('$12694.23', 'Languages');
insert into Departments (Financing, Name) values ('$145657.23', 'Software Development');
insert into Departments (Financing, Name) values ('$6667.23', 'Warhammer');
GO;


SELECT *
FROM Departments;
GO;


DELETE FROM Faculties;
GO;

ALTER TABLE Faculties
ALTER COLUMN Name NVARCHAR(100);
ALTER TABLE Faculties
ADD Dean NVARCHAR(MAX) NOT NULL CHECK(Dean LIKE '_%');
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


DELETE FROM Teachers;
GO;

ALTER TABLE Teachers
ADD IsAssistant BIT NOT NULL DEFAULT 0,
IsProfessor BIT NOT NULL DEFAULT 0;

ALTER TABLE Teachers
ADD Position NVARCHAR(MAX) NOT NULL CHECK(Position LIKE '_%');
GO;


insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname, Position) values ('03/01/2017', 1, 0, 'Xymenes', '$680.12', '$4545.68', 'Chatain', 'Master teacher 2');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname, Position) values ('02/26/2013', 1, 1, 'Benji', '$446.98', '$1552.79', 'Bullimore', 'Assistant Professor');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname, Position) values ('03/19/2021', 0, 0, 'Gayel', '$451.76', '$4207.01', 'Greenwell', 'Teacher 3');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname, Position) values ('09/07/1994', 0, 0, 'Barn', '$54.12', '$3237.94', 'Moggan', 'Master teacher 2');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname, Position) values ('04/05/2019', 1, 0, 'Hussein', '$426.36', '$477.21', 'Motion', 'Assistant teacher');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname, Position) values ('01/19/2006', 0, 0, 'Stefania', '$992.55', '$1095.34', 'Spickett', 'Teacher 2');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname, Position) values ('01/25/2016', 0, 0, 'Waverley', '$125.34', '$3953.07', 'Capun', 'Instructor');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname, Position) values ('03/16/1994', 1, 1, 'Carol', '$500.17', '$1221.48', 'Oxer', 'Assistant Professor');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname, Position) values ('09/30/2006', 1, 0, 'Melicent', '$508.54', '$2418.94', 'Unwin', 'Assistant teacher');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname, Position) values ('06/15/2017', 1, 1, 'Aubree', '$358.55', '$1670.20', 'Orthmann', 'Assistant Professor');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname, Position) values ('04/03/2013', 0, 0, 'Eustacia', '$508.88', '$2669.99', 'Salerno', 'Teacher 4');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname, Position) values ('08/11/2009', 1, 1, 'Shalom', '$816.03', '$524.74', 'Dowyer', 'Assistant Professor');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname, Position) values ('05/16/2006', 1, 0, 'Karlene', '$607.03', '$3232.47', 'Matousek', 'Master teacher');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname, Position) values ('07/11/2022', 0, 1, 'Aurea', '$816.47', '$4777.94', 'Matys', 'Associate professor');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname, Position) values ('08/24/2013', 1, 1, 'Kali', '$393.43', '$2157.72', 'Stopps', 'Assistant Professor');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname, Position) values ('04/30/1991', 0, 1, 'Elwin', '$265.16', '$4677.33', 'Gonnel', 'Associate professor');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname, Position) values ('05/31/2019', 1, 0, 'Meris', '$104.18', '$796.06', 'Kubera', 'Instructor');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname, Position) values ('10/29/2012', 1, 1, 'Agnola', '$833.55', '$4784.27', 'Michin', 'Assistant Professor');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname, Position) values ('10/14/1997', 0, 0, 'Verge', '$488.06', '$4364.41', 'Gomme', 'Teacher 4');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname, Position) values ('05/02/1998', 1, 1, 'Ralph', '$329.92', '$4538.34', 'Farman', 'Assistant Professor');
GO;

SELECT *
FROM Teachers;
GO;


--  1. Вывести таблицу кафедр, но расположить ее поля в обратном порядке.

SELECT *
FROM Departments
ORDER BY  Id DESC;
GO;

-- 2. Вывести названия групп и их рейтинги, используя в качестве названий выводимых полей “Group Name” и “Group
-- Rating” соответственно.

SELECT Name AS 'Group Name', Rating AS 'Group Rating'
FROM Groups;
GO;

-- 3. Вывести для преподавателей их фамилию, процент ставки
-- по отношению к надбавке и процент ставки по отношению
-- к зарплате (сумма ставки и надбавки).

SELECT Surname, 'Salary/Premium' = Salary * 100 / Premium, 'Salary/(Salary + Premium)' = Salary * 100 / (Salary + Premium)
FROM Teachers;
GO;

-- 4. Вывести таблицу факультетов в виде одного поля в следующем формате: “The dean of faculty [faculty] is [dean].”.

SELECT CONCAT('The dean of faculty ', Name, ' is ', Dean) AS 'Faculty info'
FROM Faculties;
GO

-- 5. Вывести фамилии преподавателей, которые являются профессорами и ставка которых превышает 1050.

SELECT Surname
FROM Teachers
WHERE IsProfessor = 1 AND Salary > 1050;
GO;

-- 6. Вывести названия кафедр, фонд финансирования которых
-- меньше 11000 или больше 25000.

SELECT Name
FROM Departments
WHERE Financing < 11000 OR Financing > 25000;
GO;

-- 7. Вывести названия факультетов кроме факультета “Computer
-- Science”.

SELECT Name
FROM Faculties
WHERE Name != 'Computer Science';
GO;

-- 8. Вывести фамилии и должности преподавателей, которые
-- не являются профессорами.

SELECT Surname, Position
FROM Teachers
WHERE IsProfessor = 0;
GO;

-- 9. Вывести фамилии, должности, ставки и надбавки ассистентов, у которых надбавка в диапазоне от 160 до 550.

SELECT Surname, Position, Salary, Premium
FROM Teachers
WHERE IsAssistant = 1 AND Premium > 160 AND Premium < 550;
GO;

-- 10.Вывести фамилии и ставки ассистентов.

SELECT Surname, Salary
FROM Teachers;
GO;

-- 11.Вывести фамилии и должности преподавателей, которые
-- были приняты на работу до 01.01.2000.

SELECT Surname, Position
FROM Teachers
WHERE EmploymentDate < '01/01/2000';
GO;

-- 12.Вывести названия кафедр, которые в алфавитном порядке
-- располагаются до кафедры “Software Development”. Выводимое поле должно иметь название “Name of Department”.

SELECT Name AS 'Name of Departmment'
FROM Departments
WHERE LOWER(Name) < 'software development';
GO;

-- 13.Вывести фамилии ассистентов, имеющих зарплату (сумма
-- ставки и надбавки) не более 1200.

SELECT Surname
FROM Teachers
WHERE IsAssistant = 1 AND Salary + Premium <= 1200;
GO;

-- 14.Вывести названия групп 5-го курса, имеющих рейтинг
-- в диапазоне от 2 до 4.

SELECT Name
FROM Groups
WHERE Year = 5 AND Rating >= 2 AND Rating <= 4;
GO;

-- 15.Вывести фамилии ассистентов со ставкой меньше 550 или
-- надбавкой меньше 200.

SELECT Surname
FROM Teachers
WHERE Salary < 550 OR Premium < 200;
GO;