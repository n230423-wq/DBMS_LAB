select *from Apps;
alter table Apps 
add constraint fk_developer 
foreign key (DeveloperID) 
references Developers(DeveloperID);
 alter table Apps
 add constraint fk_publisher
 foreign key(PublisherID)
 references Publishers(PublisherID);
 alter table Apps
 add constraint fk_category
 foreign key(CategoryID)
 references Categories(CategoryID);
select * from Apps;
select *from Apps
where rating>4.5;
select *from Apps
where Price=0;
select *from Apps
where CategoryID=305;
select *from Apps
where Downloads>500000000;
select *from Apps
where rating between 4.3 and 4.7;
select *from Apps
where Price in(0,299);
select AppId,AppName,Price from Apps
where AppID=1006;
select *from Apps
where AppName like 'G%';
select *from Apps
where AppName like '%Google%';
select *from Apps
where Rating>4.0 and Downloads>500000000;
select AppID,AppName,Rating,Downloads from Apps
where AppID=1007;
select *from Apps
where CategoryID=301 OR CategoryID=305;
select *from Apps
where AppName not like 'G%';
select *from Apps
where Rating<4.5 or Downloads>1000000000;
select *from Apps
where AppName like '%a%';
select *from Apps
where Price between 0 and 300;
select *from Apps
where PublisherID in(201,204);
select *from Apps
where not CategoryID=305;
insert into Apps
where 