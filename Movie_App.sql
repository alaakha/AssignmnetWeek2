--create dataase movie app
create database Movie_App
use Movie_App
--create table actor 
create table actors (
act_id int primary key ,
act_fname varchar(20),
act_lname varchar(20),
gender varchar(1)
)
--create table director 
create table directors (
dir_id int primary key ,
dir_fname varchar(20),
dir_lname varchar(20)
)
--create table reviewers 
create table reviewers (
rev_id int primary key ,
rev_name varchar(30)
)
--create table movies 
create table movies(
mov_id int primary key  ,
mov_title varchar(20),
mov_year int,
mov_time int,
mov_lang varchar(50),
mov_dt_rel datetime2,
mov_rel_country varchar(5)

)
--create table generes 
create table generes (
gen_id int primary key ,
gen_title varchar(20)
)
--create table rating 
create table rating (
rev_id int  ,
mov_id int  ,
rev_stars int , 
num_o_rating int 
foreign key (rev_id) references reviewers (rev_id),
foreign key (mov_id) references movies (mov_id)

)
--create table movie_direction
create table movie_direction(
dir_id int  ,
mov_id int ,
foreign key (dir_id) references directors (dir_id),
foreign key (mov_id) references movies (mov_id)
)
--create table movie_cast 
create table movie_cast(
act_id int  ,
mov_id int ,
foreign key (act_id) references actors (act_id),
foreign key (mov_id) references movies (mov_id)
)

--create table movie_genres 
create table movie_genres(
gen_id int  ,
mov_id int ,
foreign key (gen_id) references generes (gen_id),
foreign key (mov_id) references movies (mov_id)
)