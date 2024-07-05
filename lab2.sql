-- Data Definition code, dropping tables
drop table if exists Users;
drop table if exists Photos;
drop table if exists Likes;

--creating multiple tables
create table Users (User_id INT primary key,username VARCHAR(30),created DATE);
create table Photos (Photo_id INT primary key,image_url VARCHAR(50),User_id Int,publication_date DATE);
create table Likes(User_id INT ,Photo_id INT, date_oflike DATE, primary key(User_id,Photo_id));

--Data Manipulation code,inserting multiple rows
insert into Users (User_id,username,created)
values
(12345,'john','2020-07-18'),
(12346,'john','2020-07-18'),
(12347,'john','2020-07-18'),
(12348,'john','2020-07-18'),
(12349,'john','2020-07-18');

--Data Manipulation code,inserting multiple rows
insert into Photos (Photo_id,image_url,User_id,publication_date)
values
(12345,'abcdefg',1,'2020-07-18'),
(12346,'abcdefg',2,'2020-07-18'),
(12347,'abcdefg',3,'2020-07-18'),
(12348,'abcdefg',4,'2020-07-18'),
(12349,'abcdefg',5,'2020-07-18');

--Data Manipulation code,inserting multiple rows
insert into Likes (User_id,photo_id,date_oflike)
values
(12346,1,'2020-07-18'),
(12347,2,'2020-07-18'),
(12348,3,'2020-07-18'),
(12349,4,'2020-07-18'),
(12345,5,'2020-07-18');

-- selecting data in table programme
SELECT * FROM Users;
SELECT * FROM Photos;
SELECT * FROM Likes;

