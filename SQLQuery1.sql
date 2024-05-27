use master
go
drop database ProjectSem2
go
create database ProjectSem2
go
use ProjectSem2
go

create table Categories(
	id int primary key identity,
	cateName nvarchar(50),
	image varchar(255),
	createDate date,
	status bit
);

create table Brands(
	id int primary key identity,
	brandName nvarchar(50),
	image nvarchar(255),
	createDate date,
	status bit
);

create table Products(
	id varchar(100) primary key,
	productName nvarchar(100),
	price float,
	priceOld float,
	description ntext,
	image varchar(255),
	size int,
	quantity int,
	categoryId int foreign key REFERENCES Categories(id),
	brandId int foreign key references Brands(id),
	createDate date,
);

create table users(
	id int primary key identity,
	userName varchar(250),
	password varchar(255),
	email varchar(255),
	firstName nvarchar(100),
	lastName nvarchar(100),
	address nvarchar(255),
	phone varchar(20),
	role bit,
	status bit,
	created_at date
);