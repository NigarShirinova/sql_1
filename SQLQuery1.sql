CREATE DATABASE MyApp


CREATE TABLE Users(
Id INT PRIMARY KEY IDENTITY(1,1),
[Name] NVARCHAR(50) NOT NULL,
Surname NVARCHAR(50) NOT NULL,
Email VARCHAR(50) UNIQUE NOT NULL,
RegistrationDate DATE CHECK (RegistrationDate <= GETDATE()) DEFAULT GETDATE(),
ContactNumber VARCHAR(20) DEFAULT '99400000000',
Age INT CHECK ( Age >= 18),
[Address] NVARCHAR(50)
)

INSERT INTO Users ([Name], Surname, Email, RegistrationDate, ContactNumber, Age, [Address])
VALUES ('Nigar', 'Shirinova', 'n.sirinova@mail.ru', '2006-08-19', '++94508407257',18, 'mgait'),
('ghajk', 'Shirinova', 'n.sirinovdsa@mail.ru', '2006-08-19', '++94508407257',18, 'umgait'),
('hgjdsk', 'Shirinova', 'n.sirdbsninova@mail.ru', '2006-08-19', '++94508407257',18, 'ugait')
SELECT [Name], Surname, Email from Users

CREATE TABLE Categoriesss(
Id INT PRIMARY KEY IDENTITY(1,1), 
[Name] NVARCHAR(50) NOT NULL,
Slug VARCHAR(10) UNIQUE,
CreatedAt DATE CHECK (CreatedAt <= GETDATE()) DEFAULT GETDATE(),
IsActive BIT
)

use MyApp
INSERT INTO Categoriesss([Name], Slug, CreatedAt, IsActive )
VALUES('Flame Towers', 'Nigar','1190-12-12', 1)
SELECT [Name], isActive from Categoriesss 