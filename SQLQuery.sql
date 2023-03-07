drop database Hospital_Management_System;

create database Hospital_Management_system;

drop table donor;
drop table patient;
drop table doctors;

create table donor(
donor_id varchar(5) primary key,
donorname varchar(20),
Contact int,
Age int,
Any_disease varchar(50),
Blood_group varchar(3),
Haemoglobin int,
unit_blood int)
;


insert into donor(donor_id,donorname,Contact,Age,Any_disease,Blood_group,Haemoglobin,unit_blood) 
values('D1','Dhruv Ahuja',0000000000,21,'No','A+',12,1.5),
('D2','Arun Verma',0000000000,20,'No','O+',11,1),
('D3','Ramesh Kumar',0000000000,27,'No','B+',11.5,1),
('D4','Girish Sharma',0000000000,32,'Asthma','B-',11,1.5),
('D5','Vignesh Chauhan',0000000000,44,'No','AB-',10.5,1),
('D6','Rohit Sharma',0000000000,36,'No','AB+',12.5,2),
('D7','Anu Raina',0000000000,38,'No','A+',14,1.5),
('D8','Piyush Mittal',0000000000,34,'No','O+',11,1),
('D9','Pramod Dubey',0000000000,52,'Thyroid','B+',13.5,1.5),
('D10','Pulkit Chawla',0000000000,27,'Asthma','B-',11.5,2),
('D11','Vartika Madan',0000000000,26,'No','AB-',12.5,1.5),
('D12','Krishna Chawla',0000000000,31,'Diabetes','AB+',14,1);

create table patient(
patient_id varchar(5) primary key,
patient_name varchar(20),
Contact int,
Age int,
Disease varchar(50) ,
Blood_group varchar(3)
);

insert into patient(patient_id,patient_name,Contact,Age,Disease,Blood_group) 
values ('P1','Ravi Kapoor', 1111111111,71,'Anemia','AB+'),
('P2','Sonu Pathak',1111111111,12,'Thalassemia','O+'),
('P3','Rishi Chopra', 1111111111,28,'Accident','B+'),
('P4','Ishan Dudeja',1111111111,26,'Accident','A+'),
('P5','Raghav Juneja', 1111111111,37,'Anemia','B-'),
('P6','Shashank Hinduja',1111111111,16,'Thalassemia','AB-'),
('P7','Neeraj Sinha', 1111111111,71,'Accident','AB-'),
('P8','Robin Singh',1111111111,12,'Thalassemia','O+'),
('P9','Aryan Saroj', 1111111111,22,'Accident','A+');

create table doctors(
Doctor_Id varchar(5) primary key,
Doctor_name varchar(20),
doctor_type varchar(20),
);

insert into doctors(Doctor_Id,Doctor_name,doctor_type) 
values ('Dr1','Arjun Reddy','Anemia'),
('Dr2','Kabir Singh','Thalassemia'),
('Dr3','Gaurav Mohanty','Accident');
