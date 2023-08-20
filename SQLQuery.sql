DROP DATABASE hospital_management_system;

DROP TABLE donor;
DROP TABLE patient;
DROP TABLE doctors;

CREATE DATABASE hospital_management_system;

CREATE TABLE donor (
    donor_id VARCHAR(5) PRIMARY KEY,
    donorname VARCHAR(20),
    Contact INT,
    Age INT,
    Any_disease VARCHAR(50),
    Blood_group VARCHAR(3),
    Haemoglobin INT,
    unit_blood INT
);


INSERT INTO donor(donor_id,donorname,Contact,Age,Any_disease,Blood_group,Haemoglobin,unit_blood) 
VALUES('D1','Dhruv Ahuja',0000000000,21,'No','A+',12,1.5),
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

CREATE TABLE patient (
    patient_id VARCHAR(5) PRIMARY KEY,
    patient_name VARCHAR(20),
    Contact INT,
    Age INT,
    Disease VARCHAR(50),
    Blood_group VARCHAR(3)
);

INSERT INTO patient(patient_id,patient_name,Contact,Age,Disease,Blood_group) 
VALUES ('P1','Ravi Kapoor', 1111111111,71,'Anemia','AB+'),
('P2','Sonu Pathak',1111111111,12,'Thalassemia','O+'),
('P3','Rishi Chopra', 1111111111,28,'Accident','B+'),
('P4','Ishan Dudeja',1111111111,26,'Accident','A+'),
('P5','Raghav Juneja', 1111111111,37,'Anemia','B-'),
('P6','Shashank Hinduja',1111111111,16,'Thalassemia','AB-'),
('P7','Neeraj Sinha', 1111111111,71,'Accident','AB-'),
('P8','Robin Singh',1111111111,12,'Thalassemia','O+'),
('P9','Aryan Saroj', 1111111111,22,'Accident','A+');

CREATE TABLE doctors (
    Doctor_Id VARCHAR(5) PRIMARY KEY,
    Doctor_name VARCHAR(20),
    doctor_type VARCHAR(20)
);

INSERT INTO doctors(Doctor_Id,Doctor_name,doctor_type) 
VALUES ('Dr1','Arjun Reddy','Anemia'),
('Dr2','Kabir Singh','Thalassemia'),
('Dr3','Gaurav Mohanty','Accident');

CREATE TABLE donation (
    Donation_Id VARCHAR(5) PRIMARY KEY,
    Donor_Id VARCHAR(5),
    Donation_Date DATE,
    FOREIGN KEY (Donor_Id)
        REFERENCES donor (donor_id)
);

INSERT INTO donation(Donation_Id, Donor_Id, Donation_Date)
VALUES
    ('DN1', 'D1', '2023-08-15'),
    ('DN2', 'D3', '2023-08-18'),
    ('DN3', 'D6', '2023-08-20');

CREATE TABLE treatment (
    Treatment_Id VARCHAR(5) PRIMARY KEY,
    Patient_Id VARCHAR(5),
    Doctor_Id VARCHAR(5),
    Treatment_Date DATE,
    FOREIGN KEY (Patient_Id)
        REFERENCES patient (patient_id),
    FOREIGN KEY (Doctor_Id)
        REFERENCES doctors (Doctor_Id)
);

INSERT INTO treatment(Treatment_Id, Patient_Id, Doctor_Id, Treatment_Date)
VALUES
    ('T1', 'P2', 'Dr2', '2023-08-15'),
    ('T2', 'P4', 'Dr3', '2023-08-18'),
    ('T3', 'P6', 'Dr2', '2023-08-20');
