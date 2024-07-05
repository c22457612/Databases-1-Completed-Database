-- Data Definition code, dropping tables
drop table if exists follow;
drop table if exists Likes;
drop table if exists Photos;
drop table if exists Users;

--creating multiple tables
create table Users (User_id INT primary key,username VARCHAR(30)not null UNIQUE,created DATE);
create table Photos (Photo_id INT primary key,image_url VARCHAR(50),User_id Int not null references Users(User_id),publication_date DATE);
create table Likes(User_id INT ,Photo_id INT not null references Photos(Photo_id), date_oflike DATE, primary key(User_id,Photo_id));
create table follow(follower_id INT not null references Users(User_id)  ,followee_id INT not null references Users(User_id),date_and_time timestamp, primary key(follower_id,followee_id));

--Data Manipulation code,inserting multiple rows
insert into Users (User_id,username,created)
values
(12349,'john5','2020-07-18'),
(12345,'john','2021-07-18'),
(12346,'john2','2020-07-18'),
(12348,'john3','2020-07-18'),
(12347,'john9','2020-07-18'),
(123,'john54','2020-07-18'),
(124,'john34','2020-07-18'),
(1, 'gdesouza012', '2022-07-10'),
(2, 'rimpey1', '2021-07-20'),
(3, 'ewyeth2', '2023-02-9'),
(4, 'rstoller3', '2023-2-23'),
(5, 'abailles4', '2023-5-23'),
(6, 'pgallyon5', '2020-06-7'),
(7, 'rbrosch6', '2026-1-20'),
(8, 'ptuff7', '2020-2-12'),
(9, 'ddurston812', '2020-3-2'),
(10, 'athatcher912', '2011-10-20'),
(11, 'newuser1', '2023-10-15'),
(12, 'newuser2', '2023-10-15'),
(13, 'newuser3', '2023-10-15'),
(14, 'newuser4', '2023-10-15'),
(15, 'newuser5', '2023-10-15'),
(16, 'newuser6', '2023-10-15'),
(17, 'newuser7', '2023-10-15'),
(18, 'newuser8', '2023-10-15'),
(19, 'newuser9', '2023-10-15'),
(20, 'newuser10', '2023-10-15');


--Data Manipulation code,inserting multiple rows
insert into Photos (Photo_id,image_url,User_id,publication_date)
values
(1,'abcdefg',12345,'2020-07-18'),
(2,'abcdefg',12346,'2020-08-18'),
(3,'abcdefg',12347,'2020-09-18'),
(4,'abcdefg',12348,'2020-10-18'),
(5,'abcdefg',12349,'2020-11-18'),
(6,'abcdefg',1,'2020-12-18'),
(7,'abcdefg',2,'2021-07-19'),
(8,'abcdefg',3,'2021-07-19'),
(9,'',4,'2020-07-18'),
(10,'abcdefg',5,'2021-08-19'),
(11,'abcdefg',6,'2020-07-18'),
(12,'abcdefg',7,'2020-07-18'),
(13,'abcdefg',8,'2020-07-18'),
(14,'abcdefg',9,'2020-07-18'),
(15,'abcdefg',10,'2020-07-18'),
(16, 'new_image1', 11, '2023-10-15'),
(17, 'new_image2', 12, '2023-10-15'),
(18, 'new_image3', 13, '2023-10-15'),
(19, 'new_image4', 14, '2023-10-15'),
(20, 'new_image5', 15, '2023-10-15'),
(21, 'new_image6', 16, '2023-10-15'),
(22, 'new_image7', 17, '2023-10-15'),
(23, 'new_image8', 18, '2023-10-15'),
(24, 'new_image9', 19, '2023-10-15'),
(25, 'new_image10', 20, '2023-10-15');




--Data Manipulation code,inserting multiple rows
insert into Likes (User_id,photo_id,date_oflike)
values
(12346,2,'2020-07-18'),
(12347,2,'2020-07-18'),
(12348,2,'2020-07-18'), --photo id foreign key
(12349,2,'2020-07-18'),
(12345,5,'2020-07-18'),
(12344,5,'2020-07-18'),
(12343,5,'2020-07-18'),
(12342,8,'2020-07-18'),
(12341,9,'2020-07-18'),
(12340,10,'2020-07-18'),
(12339,10,'2020-07-18'),
(12338,10,'2020-07-18'),
(12337,10,'2020-07-18'),
(12336,10,'2020-07-18'),
(12335,10,'2020-07-18'),
(11, 16, '2023-10-15'),
(12, 17, '2023-10-15'),
(13, 18, '2023-10-15'),
(14, 19, '2023-10-15'),
(15, 20, '2023-10-15'),
(16, 21, '2023-10-15'),
(17, 22, '2023-10-15'),
(18, 23, '2023-10-15'),
(19, 24, '2023-10-15'),
(20, 25, '2023-10-15');

insert into follow (follower_id,followee_id,date_and_time)
values
(12346,12345,'2020-07-18 13:10:11'),
(12347,12346,'2020-07-18 13:10:11'), --follower id foreign key references user id
(12348,12347,'2020-07-18 13:10:11'),
(12349,12348,'2020-07-18 13:10:11'),
(12345,12348,'2020-07-18 13:10:11'),
(1,12348,'2020-07-18 13:10:11'),
(2,12348,'2020-07-18 13:10:11'),
(3,12348,'2020-07-18 13:10:11'),
(4,12348,'2020-07-18 13:10:11'),
(5,12348,'2020-07-18 13:10:11'),
(6,12348,'2020-07-18 13:10:11'),
(7,12348,'2020-07-18 13:10:11'),
(8,12348,'2020-07-18 13:10:11'),
(9,12348,'2020-07-18 13:10:11'),
(10,12348,'2020-07-18 13:10:11'),
(11, 11, '2023-10-15 12:00:00'), 
(12, 12, '2023-10-15 12:30:00'), 
(13, 13, '2023-10-15 13:00:00'), 
(14, 14, '2023-10-15 13:30:00'), 
(15, 15, '2023-10-15 14:00:00'), 
(16, 16, '2023-10-15 14:30:00'), 
(17, 17, '2023-10-15 15:00:00'), 
(18, 18, '2023-10-15 15:30:00'), 
(19, 19, '2023-10-15 16:00:00'), 
(20, 20, '2023-10-15 16:30:00'),
(12345,12349,'2020-07-18 13:10:11');

-- selecting data in table programme
SELECT * FROM Users;
SELECT * FROM Photos;
SELECT * FROM Likes;

select Users.username 
from Users
join likes on Users.User_id = Likes.User_id 
where Likes.Photo_id ='2';

select Users.username 
from Users
join follow on Users.User_id = follow.follower_id 
where follow.followee_id  ='12348';

select Users.username
from Users
join Likes on Users.user_id=likes.user_id 
where date_oflike < '2020-07-19';

---lab 5---
--Q.1
select Users.username
from Users
join follow on Users.user_id=follow.follower_id 
where follower_id >1;

--Q.2
SELECT Photos.image_url
FROM Likes
JOIN Photos ON Likes.Photo_id = Photos.Photo_id
WHERE Likes.User_id = 12346;

--Q.3
select Users.username
from users 
left join Photos on users.user_id = Photos.User_id
where Photos.photo_id is NULL;

--Q.4
SELECT Users.username
FROM Users
JOIN Likes ON Users.User_id = Likes.User_id
WHERE Users.User_id = Likes.Photo_id;

--Q.5
SELECT Users.username
FROM Users 
LEFT JOIN Photos ON Users.User_id = Photos.User_id
LEFT JOIN Likes ON Photos.Photo_id = Likes.Photo_id
WHERE Likes.Photo_id IS NULL;

--Q.6
SELECT Users.username
FROM Users 
LEFT JOIN Photos ON Users.User_id = Photos.User_id
LEFT JOIN Likes ON Photos.Photo_id = Likes.Photo_id
WHERE Likes.Photo_id is NOT NULL;

--Q.7
SELECT Users.username
FROM Users 
where LENGTH(users.username) >10;

--Q.8
SELECT username
FROM Users
WHERE username LIKE '%n';

--Q.9
select username,REPLACE(username,'john34','john64')
from Users where user_id=12;

--lab 9
--Q.1
SELECT U.username, COUNT(P.Photo_id) AS photo_count
FROM users U
LEFT JOIN photos P  ON U.User_id = P.user_id
GROUP BY U.username 
order by photo_count desc;

--Q.2
SELECT L.photo_id ,COUNT(P.Photo_id) AS likes_count
FROM Likes L
LEFT JOIN photos P  ON L.photo_id  = P.user_id
GROUP BY L.photo_id 
order by likes_count desc;

--Q.3
SELECT U.username, min(P.publication_date) AS photo_date
FROM users U
LEFT JOIN photos P  ON U.User_id = P.user_id
GROUP BY U.username 
order by photo_date asc
limit 1;

--lab 10
--q.1
EXPLAIN ANALYZE select * from Users where user_id=1;
drop index if exists user_primary_index;
create index user_primary_index on Users(User_id);
EXPLAIN ANALYZE select * from Users where user_id=1;

--q.2
explain analyze select publication_date from photos order by publication_date desc;
drop index if exists photo_published_index;
create index photo_published_index on Photos(publication_date);
explain analyze select publication_date from Photos order by publication_date desc;

--q.3

select follower_id as "userid",(select username from users where user_id= follower_id)
from follow f 
left join users on f.followee_id=users.user_id
where users.username='john9'
union
select followee_id as "userid",(select username from users where user_id= followee_id)
from follow f 
left join users on f.follower_id=users.user_id
where users.username='john9';

select follower_id
from follow
intersect
select photo_id 
from likes;


-- lab 12
CREATE OR REPLACE FUNCTION auto_follow()
RETURNS TRIGGER AS $$
BEGIN
    IF NOT EXISTS (
        SELECT 1 FROM follow
        WHERE follower_id = NEW.User_id
        AND followee_id = (
            SELECT User_id FROM Photos WHERE Photo_id = NEW.Photo_id
        )
    ) THEN
        -- Insert 
        INSERT INTO follow (follower_id, followee_id, date_and_time)
        VALUES (NEW.User_id, (
            SELECT User_id FROM Photos WHERE Photo_id = NEW.Photo_id
        ), CURRENT_TIMESTAMP);
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER like_trigger
AFTER INSERT ON Likes
FOR EACH ROW
EXECUTE FUNCTION auto_follow();


