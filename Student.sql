use exercise;
create table student_record ( student_id int(50) primary key,name varchar(50) unique ,email varchar(60) unique,percentage int(10),department_id int(5) not null);
insert into student_record values (1001,"Ajay","ajay@xyz.com",85,1),(1002,"Babloo","babloo@xyz.com",67,2),(1003,"Chhavi","chhavi@xyz.com",89,3),
(1004,"Dheeraj","dheeraj@xyz.com",75,4),(1005,"Evina","evina@xyz.com",91,1),(1006,"Krishna","krishna@xyz.com",99,5);
select * from student_record;

create table department_record ( department_id int(5) ,department_name varchar(50) unique);
insert into department_record values (1,"Mathematics"),(2,"Biology"),(3,"Physics");
select * from department_record;

create table faculty_record (department_id int(5),faculty_name varchar(50));
insert into faculty_record values (1,"Piyush"),(2,"Namita"),(3,"Ashneer"),(4,"Ghazal"),(5,"Anupam");
select * from faculty_record; 
-------------------------------------------------------- INNER JOIN USING Alias------------------------------------------------------------------
select s.name,s.percentage,d.department_name from student_record as s inner join department_record as d on s.department_id = d.department_id  ;  
--------------------------------------------------------- INNER JOIN-------------------------------------------------------
select student_record.name,student_record.percentage,department_record.department_name student_record 
 from student_record inner join department_record on student_record.department_id = department_record.department_id ;
 ------------------------------------------------------------ WHERE CLAUSE----------------------------------------------------
 select student_record.name,student_record.percentage,department_record.department_name 
 from student_record ,department_record where student_record.department_id = department_record.department_id ;
 --------------------------------------------------------- LEFT JOIN------------------------------------------------------
 select student_record.name,student_record.percentage,department_record.department_name student_record 
 from student_record left join department_record on student_record.department_id = department_record.department_id ; 
 ---------------------------------------------------------- RIGHT JOIN----------------------------------------------
 select student_record.name,student_record.percentage,department_record.department_name student_record 
 from student_record right join department_record on student_record.department_id = department_record.department_id  ;
 
 show tables;
 ------------------------------------------------------------ INNER JOIN (3 TABLE)-------------------------------
 select student_record.name,student_record.percentage,department_record.department_name,faculty_record.faculty_name
 from student_record inner join department_record on student_record.department_id = department_record.department_id
 inner join faculty_record on department_record.department_id = faculty_record.department_id;
 
 
select student_record.name,student_record.percentage,department_record.department_name,faculty_record.faculty_name
 from student_record inner join department_record on student_record.department_id = department_record.department_id
 inner join faculty_record on department_record.department_id = faculty_record.department_id 
 WHERE percentage >=85 order by percentage desc;
 
