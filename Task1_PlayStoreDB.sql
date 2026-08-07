create database playstoreDB;
use playstoreDB;
create table Developer(DeveloperID int primary key,
Developername varchar(60),
Country varchar(30),
FounderYear int
);
insert into Developer
values
(101,'Google LLc','USA',1998),
(102,'Meta Platforms','USA',2004),
(103,'Spotify AB','Sweden',2006);
insert into Developer
values
(104,'Canva Pty Ltd','Australia',2012),
(105,'BYJUS','India',2011);
select * from Developer;
create table Publishers(PublisherID int primary key,
PublisherName varchar(60),
HeadOffice varchar(40),
SupportEmail varchar(60)
);
insert into Publishers
values
(201,'Google Play','Califormia','support@google.com'),
(202,'Samsung Galaxy Store','Seoul','support@samsung.com'),
(203,'Huawel AppGallery','Shenzhen','support@huawei.com'),
(204,'Amazon Appstore','Seattle','support@amazon.com');
select * from publishers;
create table Categories(CategoryID int primary key,
CategoryName varchar(40),
MinimumAge int
);
insert into Categories
values
(301,'Education',3),
(302,'Productivity',3),
(303,'Music',12),
(304,'Social',13),
(305,'Gaming',16);
select *from Categories;
create table Apps(AppID int primary key,
AppName varchar(60),
DeveloperID int,
PublisherID int,
CategoryID int,
Rating decimal(2,1),
Downloads int,
Price decimal(6,2)
);
insert into Apps
values
(1001,'Google Cassroom',101,201,301,4.6,500000000,0),
(1002,'Google Keep',101,201,302,4.5,1000000000,0),
(1003,'Instagram',102,201,304,4.4,500000000,0),
(1004,'Spotify',103,201,303,4.5,1000000000,0),
(1005,'Canva',104,201,302,4.7,500000000,0),
(1006,'BYJUS Learning',105,201,301,4.3,1000000000,299),
(1007,'Candy Crush',102,204,305,4.6,100000000,0),
(1008,'Temple Run',104,203,305,4.2,500000000,0);
select * from Apps;
insert into Developer(DeveloperID,Developername,Country,FounderYear)
values(106,'OpenAI','USA',2015);
insert into Categories(CategoryID,CategoryName,MinimumAge)
values(306,'Artificial Intelligence',12)
insert into Apps(AppID,AppName,DeveloperID,PublisherID,CategoryID,Rating,Downloads,Price)
values(1009,'ChatGPT',106,206,304,4.7,40000000,0)
update Apps
set Rating=4.5
where AppID=1008;
delete from Developer
where DeveloperID=105;
update Publishers
set SupportEmail='support.galaxy@samsung.com'
where PublisherID=202;
insert into Apps(AppID,AppName,DeveloperID,PublisherID,CategoryID,Rating,Downloads,Price)
values
(1010,'WhatsApp',102,201,304,4.5,500000,0),
(1011,'LinkedIN',101,201,304,4.4,10000000,0);
update Apps
set Price=199
where AppID=1006;
delete from Categories
where CategoryID=303
select * from Developer;
select * from Publishers;
select * from Categories;
select * from Apps;