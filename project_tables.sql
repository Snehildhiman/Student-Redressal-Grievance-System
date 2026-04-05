create database snehil_project;
use snehil_project;

create table student(
student_id int primary key,
name varchar(100),
email varchar(100),
contact_no varchar(15),
course varchar(50),
year int
);

create table department(
dept_id int primary key,
dept_name varchar(100),
location varchar(100)
);

create table administrator(
admin_id int primary key,
name varchar(100),
email varchar(100)
);

create table complaint(
complaint_id int primary key,
description text,
date date,
status varchar(50),
category varchar(50),
action_taken text,
resolved_date date,
student_id int,
dept_id int,
admin_id int,
foreign key (student_id) references student(student_id),
foreign key (dept_id) references department(dept_id),
foreign key (admin_id) references administrator(admin_id)
);

create table attachment(
attach_no int,
file_name varchar(100),
complaint_id int,
primary key (attach_no, complaint_id),
foreign key (complaint_id) references complaint(complaint_id)
);

