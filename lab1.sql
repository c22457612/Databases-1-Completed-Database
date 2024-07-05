drop table if exists insta_users;
create table insta_users (username varchar(30) primary key,
first_name char(20), last_name char(20), signup_date date);
insert into insta_users values('lucky_cat', 'andrea', 'costa', '2021-09-27');
insert into insta_users values('lucky_dog', 'joe', 'costa', '2021-11-26');
insert into insta_users values('lucky_bird', 'mary', 'costa', '2021-11-25');
insert into insta_users values('lucky_frog', 'john', 'costa', '2021-09-24');
select * from insta_users;

