CREATE DATABASE StudentsGPA;

use StudentsGPA;

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age INT,
    GPA FLOAT
);

CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(50),
    Difficulty INT,
    Credits INT
);

CREATE TABLE Enrollments (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    Grade FLOAT
);

INSERT INTO Students (StudentID, FirstName, LastName, Age, GPA)
VALUES
    (1, 'Иван', 'Иванов', 20, 3.5),
    (2, 'Мария', 'Петрова', 22, 3.8),
    (3, 'Александр', 'Сидоров', 21, 3.2),
    (4, 'Екатерина', 'Козлова', 23, 3.9),
    (5, 'Дмитрий', 'Федоров', 20, 3.0);

INSERT INTO Courses (CourseID, CourseName, Difficulty, Credits)
VALUES
    (101, 'Математика', 4, 3),
    (102, 'Физика', 3, 4),
    (103, 'Литература', 2, 3),
    (104, 'История', 2, 3),
    (105, 'Биология', 3, 4);

INSERT INTO Enrollments (EnrollmentID, StudentID, CourseID, Grade)
VALUES
    (1, 1, 101, 3.7),
    (2, 1, 102, 4.0),
    (3, 2, 101, 3.9),
    (4, 3, 103, 3.5),
    (5, 3, 105, 3.2),
    (6, 4, 102, 3.8),
    (7, 4, 104, 4.0),
    (8, 5, 105, 3.1),
    (9, 5, 101, 3.0);


-- Задание:
-- Средний GPA студентов, записанных на курс "Математика":
-- Вывести средний GPA студентов, которые записаны на курс "Математика" (CourseID = 101).

Select AVG(GPA)
from Students
where StudentID in (
select StudentID FROM Enrollments WHERE CourseID = 101);


-- Максимальный возраст студента, получившего оценку выше 3.5:
-- Найти максимальный возраст студента, который получил оценку выше 3.5.

Select MAX(Age)
from Students
where StudentID in (
select StudentID from Enrollments where GRADE > 3.5);


-- Количество курсов с сложностью выше 3:
-- Подсчитать количество курсов с уровнем сложности выше 3.

SELECT COUNT(*)
FROM Courses
WHERE Difficulty > 3;


-- Средний балл по курсу для каждого курса:
-- Вывести средний балл для каждого курса.

Select CourseID, AVG(Grade)
from Enrollments
GROUP BY CourseID;


-- Самый сложный курс:
-- Найти курс с максимальным уровнем сложности.

Select *
from Courses
where Difficulty in (
select MAX(Difficulty) from Courses);







