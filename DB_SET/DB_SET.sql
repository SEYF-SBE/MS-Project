DROP DATABASE IF EXISTS ETRAVEL;
CREATE database ETRAVEL;
Use Etravel; 

Create table Users (
Username varchar(15) not null,
Email varchar(30) not null,
FirstName varchar(30) not null,
LastName varchar(30) not null,
BirthDate date not null,
PhoneNumber varchar(12),
PWHash varchar(50),
constraint USER_PK primary key (Email)
);

