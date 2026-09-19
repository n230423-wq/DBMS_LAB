select *from Apps;
#count
select count(*) from Apps;#counts the no.of rows
select count(Rating) from Apps;#return the non-values in rating col
select *from Apps#it will prints the entire app table having rating>4.5
where Rating>4.5; 
select (Rating) from Apps#it will prints only rating col, having rating>4.5
where Rating>4.5;
select AppName, (Rating) from Apps
where Rating>4.5;#prints both AN and Rating having rating>4.5
#sum
select sum(Rating)
from Apps;
select *from Developer;
select sum(FounderYear)
from Developer;
select sum(DeveloperName) from Developer;
create table Krishna(ID varchar(20) primary key,
Name varchar(20),
Age varchar(30));
insert into Krishna
values
('N230423','krishna','18'),
('N230413','Anjani','19'),
('N230418','Greeshma','20');
select *from Krishna;
select sum(Age) from Krishna;
select sum(ID) from Krishna;
select *from Developer;
select avg(FounderYear) from Developer;
select avg(PublisherName) from Publishers;
select max(PublisherName) from Publishers;
#Find the total number of applications in the Apps table.
select count(*) from Apps;
# Find the average rating of all applications.
select avg(Rating) from Apps;
# Find the highest application rating.
select max(Rating) from Apps;
# Find the lowest application rating. 
select min(Rating) from Apps;
# Find the total number of downloads of all applications
select sum(Downloads) from Apps;
# Display all applications ordered by rating in descending order.
select *from Apps
order by Rating desc;
#Find the number of applications for each CategoryID. 
select CategoryID, count(*) from Apps
group by CategoryID;
#Find the average rating for each CategoryID. 
select CategoryID, avg(Rating) from Apps
group by CategoryID;
#Find the maximum and minimum price of applications. 
select max(Price),min(Price) from Apps;
 #Display applications ordered by downloads from highest to lowest
select *from Apps
order by Downloads desc;
#Display the number of applications for each DeveloperID
select DeveloperID, count(*) from Apps
group by DeveloperID;
#Display categories having more than one application using HAVING
 select CategoryID, count(*) from Apps
 group by CategoryID
 having count(*)>1;
 #Find the total downloads for each DeveloperID
 select DeveloperID,sum(Downloads) from Apps
 group by DeveloperID;
 # Find the average rating for each PublisherID.
 select PublisherID,avg(Rating) from Apps
 group by PublisherID;
 #Display developers having more than one application.
 select DeveloperID,count(*) from Apps
 group by DeveloperID
 having count(*)>1;
 #Display categories whose average rating is greater than 4.3. 
 select CategoryID,avg(Rating)from Apps
 group by CategoryID
 having avg(Rating)>4.3;
#Display the CategoryID and total number of applications, ordered 
#by application count in descending order.
select CategoryID,count(*) as Count from Apps
group by CategoryID
order by Count desc;
#Find the highest-rated application in the Apps table using MAX() and 
#a suitable subquery. 
select *from Apps
where Rating=(select max(Rating) from Apps);
#Display the total price of applications for each DeveloperID. 
select DeveloperID,sum(Price) from Apps
group by DeveloperID;