use exercise;
create table PatientsTable (patient_id int primary key ,patient_name varchar(40) unique, sex varchar(5) not null,age int not null,phonenumber bigint(10) unique,state varchar(40) not null,
country varchar(40) default "India" ,haemoglobin float(34) not null);
show tables;
insert into PatientsTable (patient_id,patient_name,sex,age,phonenumber,state,haemoglobin) values (1,"sheela","F",23,9876543210,"Tamilnadu",82.321),(2,"rehan","M",21,7429061312,
"Karnataka",83.231),(3,"anay","M",56,7382221121,"Haryana",94.567),(4,"mahira","F",42,9318281092,"Gujarat",78.567),(5,"nishant","M",12,8209109311,"Maharashtra",65.234);
select * from PatientsTable;

select round(haemoglobin,2) from patientstable;

create table MedicinesTable (medicine_id varchar(40) ,medicine_name varchar(30) not null,patient_id int ,doctor_id int,price int(20));
desc MedicinesTable;

insert into MedicinesTable values ("M01","Meftal Forte",1,4,500),("M02","Dolo",2,2,670),("M03","Wikorly",3,1,980),("M04","PanD",1,4,420),("M05","Uprise",4,3,930),
("M06","Boroline",6,3,470),("M07","Volini",6,1,820),("M08","Vicks",4,2,640),("M09","Cetaphil Day Cream",3,3,230),("M10","MeftalSpas",5,5,850);

select * from MedicinesTable;

create table DoctorTable (doctor_id int primary key auto_increment, doctor_name varchar(40),phonenumber bigint(30),emailid varchar(40) unique,patient_id int );

desc DoctorTable;
 insert into DoctorTable (doctor_name,phonenumber,emailid,patient_id) values ("Dr.Manoj",7626313013,"manoj@gmail.com",2),("Dr.Dipika",8654345678,"dipika@gmail.com",1),
 ("Dr.Sana",9456786543,"sana@gmail.com",4),("Dr.Paras",8423231133,"paras@gmail.com",3),("Dr.Suhail",6589056798,"suhail@gmail.com",4);
 
 select * from DoctorTable;
 
 ---------------------------------------------------INNER JOIN---------------------------------
 SELECT PatientsTable.patient_id,PatientsTable.patient_name,PatientsTable.age,MedicinesTable.medicine_id,MedicinesTable.medicine_name from PatientsTable inner join 
 MedicinesTable on PatientsTable.patient_id =MedicinesTable.patient_id;
 ---------------------------------------------------LEFT JOIN------------------------------------
 SELECT PatientsTable.patient_name,PatientsTable.age,MedicinesTable.medicine_id,MedicinesTable.medicine_name from PatientsTable Left join MedicinesTable
 on PatientsTable.patient_id =MedicinesTable.patient_id;
 -------------------------------------------------- RIGHT JOIN----------------------------------------------
 SELECT PatientsTable.patient_name,PatientsTable.age,MedicinesTable.medicine_id,MedicinesTable.medicine_name from PatientsTable Right join MedicinesTable
 on PatientsTable.patient_id =MedicinesTable.patient_id;
 ------------------------------------------------------- Full JOIN (is not acceptable in mysql) ----------------------------------------------
SELECT PatientsTable.patient_id,PatientsTable.patient_name,MedicinesTable.medicine_id,MedicinesTable.medicine_name from PatientsTable Full join MedicinesTable on PatientsTable.patient_id = MedicinesTable.patient_id;
 
SELECT PatientsTable.patient_id, PatientsTable.patient_name, MedicinesTable.medicine_id, MedicinesTable.medicine_name
FROM PatientsTable
LEFT JOIN MedicinesTable ON PatientsTable.patient_id = MedicinesTable.patient_id


Select PatientsTable.patient_id, PatientsTable.patient_name, MedicinesTable.medicine_id, MedicinesTable.medicine_name
FROM MedicinesTable
LEFT JOIN PatientsTable ON PatientsTable.patient_id = MedicinesTable.patient_id
LIMIT 1000;
 
 alter table PatientsTable
 add  patient_id int; 
 
 