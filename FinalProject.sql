CREATE DATABASE Ecommerce;
GO;

USE Ecommerce;
GO;

CREATE TABLE Cars (
    car_id INT PRIMARY KEY IDENTITY (1, 1),
    brand NVARCHAR(100) NOT NULL CHECK(brand != ''),
    model NVARCHAR(100) NOT NULL CHECK(model != ''),
    year INT NOT NULL CHECK(year >= 1990),
    fuel_type_id INT NOT NULL FOREIGN KEY REFERENCES FuelTypes(fuel_type_id),
    body_type_id INT NOT NULL FOREIGN KEY REFERENCES BodyTypes(body_type_id),
    color_id INT NOT NULL FOREIGN KEY REFERENCES Colors(color_id),
    image_link VARCHAR(MAX) CHECK(image_link LIKE '%_.png' OR image_link LIKE '%_.jpg')
);
GO;

CREATE TABLE Users (
    user_id INT PRIMARY KEY IDENTITY (1, 1),
    username NVARCHAR(100) UNIQUE NOT NULL CHECK(username != ''),
    password NVARCHAR(100) NOT NULL CHECK(password != '' AND password LIKE '________%'),
    email NVARCHAR(100) UNIQUE NOT NULL CHECK(email LIKE '%_@_%._%')
);
GO;


CREATE TABLE ProductList (
    product_id INT PRIMARY KEY IDENTITY (1, 1),
    car_id INT NOT NULL FOREIGN KEY REFERENCES Cars(car_id),
    seller_id INT NOT NULL FOREIGN KEY REFERENCES Sellers(seller_id),
    price MONEY NOT NULL CHECK(price > 0),
    quantity INT NOT NULL CHECK(quantity > 0)
);
GO;

CREATE TABLE ManufacturingCountries (
    country_id INT PRIMARY KEY IDENTITY (1, 1),
    country_name NVARCHAR(100) UNIQUE NOT NULL CHECK(country_name != '')
);
GO;

CREATE TABLE FuelTypes (
    fuel_type_id INT PRIMARY KEY IDENTITY(1, 1),
    fuel_type NVARCHAR(100) UNIQUE NOT NULL CHECK(fuel_type != '')
);
GO;

CREATE TABLE BodyTypes (
    body_type_id INT PRIMARY KEY IDENTITY(1, 1),
    body_type NVARCHAR(100) UNIQUE NOT NULL CHECK(body_type != '')
);
GO;

CREATE TABLE Colors (
    color_id INT PRIMARY KEY IDENTITY(1, 1),
    color_name NVARCHAR(100) UNIQUE NOT NULL CHECK(color_name != '')
);
GO;

CREATE TABLE Sellers (
    seller_id INT PRIMARY KEY IDENTITY (1, 1),
    user_id INT FOREIGN KEY REFERENCES Users(user_id),
    company_name NVARCHAR(100),
    contact_number NVARCHAR(50) NOT NULL CHECK (contact_number != ''),
    country_id INT FOREIGN KEY REFERENCES ManufacturingCountries(country_id),
    rating FLOAT NOT NULL CHECK (rating > 0)
);
GO;

INSERT INTO Colors (color_name) VALUES ('Red');
INSERT INTO Colors (color_name) VALUES ('Blue');
INSERT INTO Colors (color_name) VALUES ('Green');
INSERT INTO Colors (color_name) VALUES ('Yellow');
INSERT INTO Colors (color_name) VALUES ('Black');
INSERT INTO Colors (color_name) VALUES ('White');
GO;

INSERT INTO BodyTypes (body_type) VALUES ('Sedan');
INSERT INTO BodyTypes (body_type) VALUES ('Hatchback');
INSERT INTO BodyTypes (body_type) VALUES ('Wagon');
INSERT INTO BodyTypes (body_type) VALUES ('SUV');
INSERT INTO BodyTypes (body_type) VALUES ('Coupe');
INSERT INTO BodyTypes (body_type) VALUES ('Minivan');
go;

INSERT INTO FuelTypes (fuel_type) VALUES ('Gasoline');
INSERT INTO FuelTypes (fuel_type) VALUES ('Diesel');
INSERT INTO FuelTypes (fuel_type) VALUES ('Electricity');
INSERT INTO FuelTypes (fuel_type) VALUES ('Hybrid');
INSERT INTO FuelTypes (fuel_type) VALUES ('Natural Gas');
go;

INSERT INTO ManufacturingCountries (country_name) VALUES ('United States');
INSERT INTO ManufacturingCountries (country_name) VALUES ('Germany');
INSERT INTO ManufacturingCountries (country_name) VALUES ('Japan');
INSERT INTO ManufacturingCountries (country_name) VALUES ('South Korea');
INSERT INTO ManufacturingCountries (country_name) VALUES ('China');
INSERT INTO ManufacturingCountries (country_name) VALUES ('United Kingdom');
go;


insert into Users (username, password, email) values ('csqueers0', 'hO6(7YeMvE&', 'mblencowe0@comsenz.com');
insert into Users (username, password, email) values ('rgravenor1', 'xJ4%LL8U\+R)F', 'gsilmon1@meetup.com');
insert into Users (username, password, email) values ('cwellman2', 'wS2''D,!&', 'mgodney2@taobao.com');
insert into Users (username, password, email) values ('iclemerson3', 'qS1/YJzb%dPBy<''', 'dlutsch3@istockphoto.com');
insert into Users (username, password, email) values ('tglendza4', 'pO5.C)#!', 'fdybbe4@canalblog.com');
insert into Users (username, password, email) values ('bbiasotti5', 'cY9$734,~U!gud7', 'gcreak5@wikipedia.org');
insert into Users (username, password, email) values ('vbrownrigg6', 'fD3@l6F7oK', 'blaise6@shinystat.com');
insert into Users (username, password, email) values ('fedwick7', 'qJ6>uvIziO&pB', 'sovid7@google.com.hk');
insert into Users (username, password, email) values ('tbowley8', 'eG1_I|s.fW.@TXE', 'jswinley8@ustream.tv');
insert into Users (username, password, email) values ('bgavriel9', 'kD2">PKf_}PVo', 'tbrasener9@addthis.com');
insert into Users (username, password, email) values ('ckalkofena', 'tL5>ygL3', 'thamsleya@ustream.tv');
insert into Users (username, password, email) values ('mshakleb', 'nK4&LJ7Sl75', 'rhopewellb@behance.net');
go;

INSERT INTO Cars (brand, model, year, fuel_type_id, body_type_id, color_id) VALUES ('Toyota', 'Camry', 2010, 1, 1, 2);
INSERT INTO Cars (brand, model, year, fuel_type_id, body_type_id, color_id) VALUES ('Honda', 'Civic', 2019, 1, 2, 1);
INSERT INTO Cars (brand, model, year, fuel_type_id, body_type_id, color_id) VALUES ('Ford', 'Escape', 2005, 2, 4, 5);
INSERT INTO Cars (brand, model, year, fuel_type_id, body_type_id, color_id) VALUES ('BMW', 'X5', 2015, 1, 4, 3);
INSERT INTO Cars (brand, model, year, fuel_type_id, body_type_id, color_id) VALUES ('Tesla', 'Model 3', 2022, 3, 2, 6);
INSERT INTO Cars (brand, model, year, fuel_type_id, body_type_id, color_id) VALUES ('Chevrolet', 'Cruze', 2006, 1, 1, 4);
INSERT INTO Cars (brand, model, year, fuel_type_id, body_type_id, color_id) VALUES ('Nissan', 'Rogue', 2008, 2, 4, 2);
INSERT INTO Cars (brand, model, year, fuel_type_id, body_type_id, color_id, image_link) VALUES ('Audi', 'A4', 1995, 1, 1, 5, 'https://a.d-cd.net/a35d861s-1920.jpg');
INSERT INTO Cars (brand, model, year, fuel_type_id, body_type_id, color_id) VALUES ('Hyundai', 'Santa Fe', 2022, 3, 4, 3);
INSERT INTO Cars (brand, model, year, fuel_type_id, body_type_id, color_id, image_link) VALUES ('Volvo', 'XC60', 2020, 2, 4, 6, 'https://www.coches.com/fotos_historicas/volvo/XC60-T6-2013/volvo_xc60-t6-2013_r2.jpg');
go;

insert into Sellers (user_id, company_name, contact_number, country_id, rating) values (1, 'SuperiorAuto', '497-410-2376', 2, 7.5);
insert into Sellers (user_id, company_name, contact_number, country_id, rating) values (2, 'SpeedyCars', '364-121-7092', 3, 9.6);
insert into Sellers (user_id, company_name, contact_number, country_id, rating) values (3, 'SuperiorAuto', '596-720-5003', 6, 7.2);
insert into Sellers (user_id, company_name, contact_number, country_id, rating) values (4, 'AutoMax', '236-296-1234', 6, 9.8);
insert into Sellers (user_id, company_name, contact_number, country_id, rating) values (5, 'DriveTime', '852-939-9625', 3, 9.3);
insert into Sellers (user_id, company_name, contact_number, country_id, rating) values (6, 'TopGear', '568-587-0936', 5, 6.4);
insert into Sellers (user_id, company_name, contact_number, country_id, rating) values (7, 'AutoMax', '904-489-6812', 4, 7.5);
insert into Sellers (user_id, company_name, contact_number, country_id, rating) values (8, 'SpeedyCars', '888-511-0201', 6, 6.1);
insert into Sellers (user_id, company_name, contact_number, country_id, rating) values (9, 'MegaMotors', '735-273-8528', 1, 9.6);
insert into Sellers (user_id, company_name, contact_number, country_id, rating) values (10, 'CarWorld', '450-256-3482', 3, 5.1);
insert into Sellers (user_id, company_name, contact_number, country_id, rating) values (11, 'MegaMotors', '816-911-7591', 1, 9.4);
insert into Sellers (user_id, company_name, contact_number, country_id, rating) values (12, 'DriveTime', '605-573-9388', 2, 5.0);
go;

insert into ProductList (car_id, seller_id, price, quantity) values (8, 12, 73576, 1);
insert into ProductList (car_id, seller_id, price, quantity) values (3, 3, 27087, 5);
insert into ProductList (car_id, seller_id, price, quantity) values (6, 10, 72259, 3);
insert into ProductList (car_id, seller_id, price, quantity) values (4, 9, 20757, 1);
insert into ProductList (car_id, seller_id, price, quantity) values (8, 8, 94800, 3);
insert into ProductList (car_id, seller_id, price, quantity) values (1, 2, 56096, 4);
insert into ProductList (car_id, seller_id, price, quantity) values (7, 7, 45905, 2);
insert into ProductList (car_id, seller_id, price, quantity) values (10, 5, 51515, 2);
insert into ProductList (car_id, seller_id, price, quantity) values (10, 4, 76849, 4);
insert into ProductList (car_id, seller_id, price, quantity) values (2, 4, 38404, 5);
go;
