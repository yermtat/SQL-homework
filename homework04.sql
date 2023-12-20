CREATE DATABASE StepAcademy;
GO;

USE StepAcademy;
GO;

create table People(
[Id] int primary key identity(1, 1),
[Name] nvarchar(30) NOT NULL,
[Surname] nvarchar(30) NOT NULL,
[Email] nvarchar(30) NOT NULL,
[Age] int NOT NULL check (Age >= 14 and Age < 100)
);

create table Employee(
[Id] int primary key identity(1, 1),
[Salary] smallmoney NOT NULL check ([Salary] >= 300),
[Experience] int NOT NULL check ([Experience] >= 0)
);

create table Faculty(
[Id] int primary key identity(1, 1),
[Name] nvarchar(30) NOT NULL
);

create table Students(
[Id] int primary key identity(1, 1),
[PersonId] int foreign key references People(Id)
);

create table Teachers(
[Id] int primary key identity(1, 1),
[PersonId] int foreign key references People(Id),
[EmployeeId] int foreign key references Employee(Id)
);

create table Groups(
[Id] int primary key identity(1, 1),
[Name] nvarchar(30) NOT NULL,
[Course] int NOT NULL check ([Course] >= 1 and [Course] <= 6),
[FacultyId] int foreign key references Faculty(Id)
);

create table GroupData(
[Id] int primary key identity(1, 1),
[StudentId] int foreign key references Students(Id),
[GroupId] int foreign key references Groups(Id)
);

create table StudyPlan(
[Id] int primary key identity(1, 1),
[TeacherId] int foreign key references Teachers(Id),
[GroupId] int foreign key references Groups(Id)
);

alter table Students
add [GPA] int check ([GPA] >= 0 and GPA <= 12);
GO;




insert into People ([Name], [Surname], [Email], [Age]) values ('Donn', 'Pennetta', 'dpennetta0@chicagotribune.com', 30);
insert into People ([Name], [Surname], [Email], [Age]) values ('Neddy', 'Dobell', 'ndobell1@geocities.com', 23);
insert into People ([Name], [Surname], [Email], [Age]) values ('Aryn', 'Santarelli', 'asantarelli2@chronoengine.com', 19);
insert into People ([Name], [Surname], [Email], [Age]) values ('Lyndy', 'Maypowder', 'lmaypowder3@apple.com', 23);
insert into People ([Name], [Surname], [Email], [Age]) values ('Nydia', 'Wermerling', 'nwermerling4@unesco.org', 17);
insert into People ([Name], [Surname], [Email], [Age]) values ('Warde', 'O''Gormley', 'wogormley5@google.de', 21);
insert into People ([Name], [Surname], [Email], [Age]) values ('Akim', 'Balleine', 'aballeine6@ucoz.com', 16);
insert into People ([Name], [Surname], [Email], [Age]) values ('Brion', 'Paumier', 'bpaumier7@privacy.gov.au', 25);
insert into People ([Name], [Surname], [Email], [Age]) values ('Arabella', 'Alderman', 'aalderman8@mit.edu', 28);
insert into People ([Name], [Surname], [Email], [Age]) values ('Tobe', 'Glencros', 'tglencros9@jimdo.com', 16);

insert into People ([Name], [Surname], [Email], [Age]) values ('Liesa', 'Wawer', 'lwawer0@craigslist.org', 24);
insert into People ([Name], [Surname], [Email], [Age]) values ('Tripp', 'Kittredge', 'tkittredge1@spiegel.de', 88);
insert into People ([Name], [Surname], [Email], [Age]) values ('Miquela', 'Lemoir', 'mlemoir2@thetimes.co.uk', 85);
insert into People ([Name], [Surname], [Email], [Age]) values ('Amalee', 'Sparshett', 'asparshett3@insider.com', 62);
insert into People ([Name], [Surname], [Email], [Age]) values ('Reginauld', 'McCraine', 'rmccraine4@dailymail.co.uk', 97);
insert into People ([Name], [Surname], [Email], [Age]) values ('Hyacinthie', 'Hazeltine', 'hhazeltine5@google.pl', 54);
insert into People ([Name], [Surname], [Email], [Age]) values ('Jackqueline', 'Kirdsch', 'jkirdsch6@free.fr', 71);
insert into People ([Name], [Surname], [Email], [Age]) values ('Frazer', 'McGriele', 'fmcgriele7@surveymonkey.com', 25);
insert into People ([Name], [Surname], [Email], [Age]) values ('Kimmi', 'Mavin', 'kmavin8@ftc.gov', 44);
insert into People ([Name], [Surname], [Email], [Age]) values ('Bell', 'Greenier', 'bgreenier9@usatoday.com', 52);
GO;

insert into Employee ([Salary], [Experience]) values (1003, 3);
insert into Employee ([Salary], [Experience]) values (1079, 43);
insert into Employee ([Salary], [Experience]) values (1738, 50);
insert into Employee ([Salary], [Experience]) values (1542, 40);
insert into Employee ([Salary], [Experience]) values (1893, 70);
insert into Employee ([Salary], [Experience]) values (1238, 35);
insert into Employee ([Salary], [Experience]) values (1568, 36);
insert into Employee ([Salary], [Experience]) values (900, 3);
insert into Employee ([Salary], [Experience]) values (1036, 21);
insert into Employee ([Salary], [Experience]) values (1291, 30);
go;


insert into Faculty ([Name]) values ('Engineering');
insert into Faculty ([Name]) values ('Business');
insert into Faculty ([Name]) values ('Medicine');
insert into Faculty ([Name]) values ('Law');
insert into Faculty ([Name]) values ('Education');
insert into Faculty ([Name]) values ('Computer Science');
insert into Faculty ([Name]) values ('Chemistry');
insert into Faculty ([Name]) values ('Biology');
insert into Faculty ([Name]) values ('Physics');
go;


insert into Students ([PersonId], [GPA]) values (1, 12);
insert into Students ([PersonId], [GPA]) values (2, 0);
insert into Students ([PersonId], [GPA]) values (3, 3);
insert into Students ([PersonId], [GPA]) values (4, 8);
insert into Students ([PersonId], [GPA]) values (5, 10);
insert into Students ([PersonId], [GPA]) values (6, 11);
insert into Students ([PersonId], [GPA]) values (7, 9);
insert into Students ([PersonId], [GPA]) values (8, 10);
insert into Students ([PersonId], [GPA]) values (9, 11);
insert into Students ([PersonId], [GPA]) values (10, 6);
go;

insert into Teachers ([PersonId], [EmployeeId]) values (11, 1);
insert into Teachers ([PersonId], [EmployeeId]) values (12, 2);
insert into Teachers ([PersonId], [EmployeeId]) values (13, 3);
insert into Teachers ([PersonId], [EmployeeId]) values (14, 4);
insert into Teachers ([PersonId], [EmployeeId]) values (15, 5);
insert into Teachers ([PersonId], [EmployeeId]) values (16, 6);
insert into Teachers ([PersonId], [EmployeeId]) values (17, 7);
insert into Teachers ([PersonId], [EmployeeId]) values (18, 8);
insert into Teachers ([PersonId], [EmployeeId]) values (19, 9);
insert into Teachers ([PersonId], [EmployeeId]) values (20, 10);
go;


insert into Groups ([Name], [Course], [FacultyId]) values ('ECID7890', 6, 6);
insert into Groups ([Name], [Course], [FacultyId]) values ('ECID9012', 3, 8);
insert into Groups ([Name], [Course], [FacultyId]) values ('ECID8901', 1, 3);
insert into Groups ([Name], [Course], [FacultyId]) values ('ECID8901', 4, 4);
insert into Groups ([Name], [Course], [FacultyId]) values ('ECID8901', 1, 1);
insert into Groups ([Name], [Course], [FacultyId]) values ('ECID8901', 2, 2);
insert into Groups ([Name], [Course], [FacultyId]) values ('ECID1234', 3, 5);
insert into Groups ([Name], [Course], [FacultyId]) values ('ECID9012', 3, 7);
insert into Groups ([Name], [Course], [FacultyId]) values ('ECID2345', 3, 9);
insert into Groups ([Name], [Course], [FacultyId]) values ('ECID3456', 4, 9);
go;

insert into GroupData ([StudentId], [GroupId]) values (1, 8);
insert into GroupData ([StudentId], [GroupId]) values (2, 5);
insert into GroupData ([StudentId], [GroupId]) values (3, 4);
insert into GroupData ([StudentId], [GroupId]) values (4, 7);
insert into GroupData ([StudentId], [GroupId]) values (5, 4);
insert into GroupData ([StudentId], [GroupId]) values (6, 7);
insert into GroupData ([StudentId], [GroupId]) values (7, 7);
insert into GroupData ([StudentId], [GroupId]) values (8, 9);
insert into GroupData ([StudentId], [GroupId]) values (9, 9);
insert into GroupData ([StudentId], [GroupId]) values (10, 5);
go;

insert into StudyPlan ([TeacherId], [GroupId]) values (7, 7);
insert into StudyPlan ([TeacherId], [GroupId]) values (4, 2);
insert into StudyPlan ([TeacherId], [GroupId]) values (5, 7);
insert into StudyPlan ([TeacherId], [GroupId]) values (3, 4);
insert into StudyPlan ([TeacherId], [GroupId]) values (8, 4);
insert into StudyPlan ([TeacherId], [GroupId]) values (7, 8);
insert into StudyPlan ([TeacherId], [GroupId]) values (7, 4);
insert into StudyPlan ([TeacherId], [GroupId]) values (9, 8);
insert into StudyPlan ([TeacherId], [GroupId]) values (6, 8);
insert into StudyPlan ([TeacherId], [GroupId]) values (7, 9);
go;



Select *
FROM Teachers
inner join  People as P on Teachers.PersonId = P.Id
inner join Employee as E on Teachers.EmployeeId = E.Id;
go;

Select *
from Students
inner join People P on Students.PersonId = P.Id;
go;

Select p.Name, p.Surname, G.Name, g.Course, f.Name, s.GPA
from GroupData
inner join Students S on GroupData.StudentId = S.Id
inner join People P on S.PersonId = P.Id
inner join Groups G on GroupData.GroupId = G.Id
inner join Faculty F on G.FacultyId = F.Id;
go;

select P.Name, P.Surname, G.Name
from StudyPlan
inner join Teachers T on StudyPlan.TeacherId = T.Id
inner join People P on P.Id = T.PersonId
inner join Groups G on StudyPlan.GroupId = G.Id;
go;