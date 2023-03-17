CREATE DATABASE IF NOT EXISTS project;

use project;



CREATE TABLE IF NOT EXISTS user (
username VARCHAR(50) PRIMARY KEY,
password VARCHAR(50),
dob DATE,
phone VARCHAR(20),
email VARCHAR(100),
first_name VARCHAR(50),
last_name VARCHAR(50)
);





describe user;

ALTER TABLE user
ADD whatsapp_No int ;

ALTER TABLE user
ADD test int ;

alter table user rename column test to new;


INSERT INTO user (name1, nmae2, name3,name4,name5,name6,name7,name8,name9,nmae10)
VALUES (test1, test2, test3,test4,test5,test6,test7,test8,test9,test10);



