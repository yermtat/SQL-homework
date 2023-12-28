CREATE DATABASE Ecommerce;
GO;

USE Ecommerce;


CREATE TABLE Automobiles(
	Brand NVARCHAR(100) NOT NULL UNIQUE CHECK(Brand != ''),
	Model NVARCHAR(100) NOT NULL CHECK(Model != ''),
	BodyType INT NOT NULL FOREIGN KEY REFERENCES BodyTypes(Id),
	OilType INT NOT NULL FOREIGN KEY REFERENCES OilType(Id),
	Engine INT NOT NULL CHECK (Engine > 0),
	Country INT NOT NULL FOREIGN KEY REFERENCES Countries(Id)
);


CREATE TABLE BodyTypes(
	Id INT
);

CREATE TABLE Oil(
	Id INT
);

CREATE TABLE Countries(
	Id INT 
);

CREATE TABLE Users(
	Id INT NOT NULL PRIMARY KEY,
	Name NVARCHAR(100) NOT NULL CHECK(Name != ''),
	Surname NVARCHAR(100) NOT NULL CHECK(Surname != ''),
	Age INT NOT NULL CHECK(Age > 18 AND AGE < 100),
	Email NVARCHAR(100) NOT NULL CHECK(Email LIKE '_%@
);