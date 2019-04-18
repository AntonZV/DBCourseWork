DROP DATABASE KursovaDB

CREATE DATABASE KursovaDB 
ON						
(
	NAME = 'KursovaDB',			
	FILENAME = 'D:\4kurs\DB Kursova.mdf',		
	SIZE = 30MB,                   
	MAXSIZE = 100MB,				
	FILEGROWTH = 10MB			
)
LOG ON						 
( 
	NAME = 'LogKursovaDB',				   
	FILENAME = 'D:\4kurs\DB Kursova.ldf',       
	SIZE = 5MB,                      
	MAXSIZE = 50MB,                  
	FILEGROWTH = 5MB                  
)               
COLLATE Cyrillic_General_CI_AS

USE KursovaDB              
GO  

CREATE TABLE [Route]
(
	RouteID int identity not null
		primary key,
	StartPoint nvarchar(20) not null,
	[EndPoint] nvarchar(20) not null,
	FirstRace time not null,
	LastRace time not null,
	Interval time not null,
)
CREATE TABLE Transport
(
	TransportID int identity not null
		primary key,
	TransportType nvarchar(20) not null,
	Model nvarchar(20) not null,
	Speed float not null,
	Capacity int not null,
	RouteID int not null
		foreign key references [Route](RouteID),
)
go
CREATE TABLE Position
(
	PositionID int identity not null 
		primary key,
	PositionType nvarchar(20) not null,
	Salary money not null,
	WorkShift time not null,
)
go

CREATE TABLE Worker
 (
	WorkerID int identity not null 
		primary key,
    FirstName nvarchar(20) not null,
	SecondName nvarchar(20) not null,
	DateBirth date not null,
	Experience int not null,
	PositionID int not null 
		foreign key references Position(PositionID),
	TransportID int not null
		foreign key references Transport(TransportID),
 )
 GO

 INSERT INTO [Route]
 VALUES
 ('Князів Коріатовичів','Барське шосе','06:20','20:09','00:19'),
 ('Залізничний вокзал', 'Електромережа','06:00','22:57','00:11'),
 ('Електромережа','Залізничний вокзал','05:51','22:31','00:11'),
 ('Барське шосе','Вишенька','06:49','20:05','00:21'),
 ('Вишенька','Барське шосе','06:20','20:09','00:19'),
 ('Князів Коріатовичів','Електромережа','07:10','21:40','00:25'),
 ('Вишенька','Електромережа','06:25','19:55','00:28'),
 ('Електромережа','Вишенька','06:35','20:02','00:25'),
 ('Барське шосе','Залізничний вокзал','05:25','22:44','00:06'),
 ('Залізничний вокзал','Барське шосе','05:59','23:06','00:06'),
 ('Барське шосе','Електромережа','06:01','20:20','00:11'),
 ('Князів Коріатовичів','Залізничний вокзал','05:50','22:55','00:09'),
 ('Електромережа','Барське шосе','05:57','20:39','00:11'),
 ('Залізничний вокзал','Вишенька','06:06','22:46','00:10'),
 ('Вишенька','Залізничний вокзал','05:55','22:36','00:10')

 INSERT INTO Transport
 VALUES
 ('Трамвай','ІК00213Л',85.5,50,3),
 ('Трамвай','ІК00213Л',85.5,50,2),
 ('Тролейбус','ФК1200041ЛЮ',60.5,50,10),
 ('Тролейбус','МД001384ХЛ',60.0,80,2),
 ('Тролейбус','ПМ170098ДТ',90.7,65,1),
 ('Трамвай','ТР200144Т',88.8,70,5),
 ('Трамвай','ІК00213Л',85.5,50,7),
 ('Тролейбус','ФМ1200041ЛС',60.5,50,5),
 ('Тролейбус','ПМ170098ДТ',90.7,35,6),
 ('Трамвай','ТР231044АВ',88.8,70,12),
 ('Тролейбус','АМ1200041ЛО',60.5,50,8),
 ('Тролейбус','ПС170098ДШ',40.0,90,11),
 ('Трамвай','ТЯ200144ТЮ',88.8,70,12),
 ('Тролейбус','ФК1200041ЛЮ',60.5,50,9),
 ('Тролейбус','ФК1200041ЛЮ',60.5,50,4)
 
 INSERT INTO Position
 VALUES
 ('Кондуктор',4500,'04:00'),
 ('Водій',7500,'06:00'),
 ('Контролер',3000,'02:00'),
 ('Ремонтник', 5000, '04:00')

 DECLARE @start DATE = '1960-01-01'
 DECLARE @end DATE = '1990-01-01'
 INSERT INTO Worker
 VALUES
 ('Василь','Трембіда',DATEADD(DAY,ABS(CHECKSUM(NEWID())) % ( 1 + DATEDIFF(DAY,@start,@end)),@start), 15,3,1),
 ('Іван','Фролов',DATEADD(DAY,ABS(CHECKSUM(NEWID())) % ( 1 + DATEDIFF(DAY,@start,@end)),@start), 5,4,2),
 ('Тарас','Тополя',DATEADD(DAY,ABS(CHECKSUM(NEWID())) % ( 1 + DATEDIFF(DAY,@start,@end)),@start), 30,2,7),
 ('Юлія','Ніколюк',DATEADD(DAY,ABS(CHECKSUM(NEWID())) % ( 1 + DATEDIFF(DAY,@start,@end)),@start), 7,3,12),
 ('Савелій','Мірошниченко',DATEADD(DAY,ABS(CHECKSUM(NEWID())) % ( 1 + DATEDIFF(DAY,@start,@end)),@start), 21,4,9),
 ('Марія','Тарнагородська',DATEADD(DAY,ABS(CHECKSUM(NEWID())) % ( 1 + DATEDIFF(DAY,@start,@end)),@start), 13,1,5),
 ('Таїсія','Задорожна',DATEADD(DAY,ABS(CHECKSUM(NEWID())) % ( 1 + DATEDIFF(DAY,@start,@end)),@start), 17,2,11),
 ('Ювлантій','Андропов',DATEADD(DAY,ABS(CHECKSUM(NEWID())) % ( 1 + DATEDIFF(DAY,@start,@end)),@start), 13,4,6),
 ('Павло','Підкірний',DATEADD(DAY,ABS(CHECKSUM(NEWID())) % ( 1 + DATEDIFF(DAY,@start,@end)),@start), 2,1,3),
 ('Марія','Покорна',DATEADD(DAY,ABS(CHECKSUM(NEWID())) % ( 1 + DATEDIFF(DAY,@start,@end)),@start), 14,1,10),
 ('Максим','Безний',DATEADD(DAY,ABS(CHECKSUM(NEWID())) % ( 1 + DATEDIFF(DAY,@start,@end)),@start), 23,4,4),
 ('Марцин','Тарновський',DATEADD(DAY,ABS(CHECKSUM(NEWID())) % ( 1 + DATEDIFF(DAY,@start,@end)),@start), 21,3,13),
 ('Януш','Вишневський',DATEADD(DAY,ABS(CHECKSUM(NEWID())) % ( 1 + DATEDIFF(DAY,@start,@end)),@start), 1,2,15),
 ('Матільда','Вишногогордська',DATEADD(DAY,ABS(CHECKSUM(NEWID())) % ( 1 + DATEDIFF(DAY,@start,@end)),@start), 13,1,8),
 ('Тамара','Розенберг',DATEADD(DAY,ABS(CHECKSUM(NEWID())) % ( 1 + DATEDIFF(DAY,@start,@end)),@start), 4,4,14)
 go

 DROP TABLE Worker;
 DROP TABLE Transport;
 DROP TABLE [Route];
 DROP TABLE Position;
 go

 SELECT * FROM [Route];
 SELECT * FROM Transport;
 SELECT * FROM Position;
 SELECT * FROM Worker;
 go

SELECT * FROM Transport;
SELECT TransportType, COUNT(TransportType) AS Quantity FROM Transport
GROUP BY TransportType

SELECT * FROM Position;
SELECT * FROM Worker;
SELECT PositionType, COUNT(Worker.PositionID) AS Quantity FROM Worker,Position
WHERE Worker.PositionID=Position.PositionID
GROUP BY PositionType

SELECT [WorkerID], [FirstName], [SecondName], [DateBirth], [Experience], Worker.PositionID, [TransportID],[PositionType] 
FROM [Worker],[Position] 
WHERE Position.PositionType='Кондуктор' AND Worker.PositionID=1 

ALTER TABLE Transport
ALTER COLUMN Speed int;