-- create table for users;

create table users(
id int,
name varchar(254),
email varchar(254)
);

insert into users (id,name,email) values (1,'harish','harish@email.com');
insert into users (id,name,email) values (2,'hemi','hemi@email.com');
insert into users (id,name,email) values (3,'kamal','kamal@email.com');
insert into users (id,name,email) values (4,'shyam','shyam@email.com');
insert into users (id,name,email) values (5,'karthi','karthi@email.com');

-- create table for codekata

create table codekata(
id int,
problems_solved int
);

insert into codekata (id,problems_solved) values (1,25);
insert into codekata (id,problems_solved) values (2,0);
insert into codekata (id,problems_solved) values (3,19);
insert into codekata (id,problems_solved) values (4,7);
insert into codekata (id,problems_solved) values (5,20);

-- create table for attendance

create table attendance(
id int,
total_classes int,
classes_present int,
classes_absent int
);

insert into attendance (id,total_classes,classes_present,classes_absent) values (1,10,9,1);
insert into attendance (id,total_classes,classes_present,classes_absent) values (2,20,15,5);
insert into attendance (id,total_classes,classes_present,classes_absent) values (3,10,6,4);
insert into attendance (id,total_classes,classes_present,classes_absent) values (4,19,9,10);
insert into attendance (id,total_classes,classes_present,classes_absent) values (5,21,21,0);

-- create table for topics

create table topics (
courseid varchar(255),
topic varchar(255)
);

insert into topics (courseid,topic) values ('001','front end');
insert into topics (courseid,topic) values ('001','backend end');
insert into topics (courseid,topic) values ('001','database');
insert into topics (courseid,topic) values ('002','python');
insert into topics (courseid,topic) values ('002','dataModeling');
insert into topics (courseid,topic) values ('003','selenium');
insert into topics (courseid,topic) values ('003','type of testing');
insert into topics (courseid,topic) values ('004','cyber security rules');
insert into topics (courseid,topic) values ('004','networking');
insert into topics (courseid,topic) values ('005','git');
insert into topics (courseid,topic) values ('005','ci/cd pipelines');
insert into topics (courseid,topic) values ('005','kuberneties');
insert into topics (courseid,topic) values ('005','software life cycle');

-- create table for tasks

create table tasks(
id int,
taskid varchar(255),
marks int
);

insert into tasks (id,taskid,marks) values (1,'t1',9);
insert into tasks (id,taskid,marks) values (1,'t2',8);
insert into tasks (id,taskid,marks) values (1,'t3',10);
insert into tasks (id,taskid,marks) values (1,'t4',7);
insert into tasks (id,taskid,marks) values (2,'t1',10);
insert into tasks (id,taskid,marks) values (2,'t2',5);
insert into tasks (id,taskid,marks) values (3,'t1',6);
insert into tasks (id,taskid,marks) values (4,'t1',10);
insert into tasks (id,taskid,marks) values (5,'t1',7);
insert into tasks (id,taskid,marks) values (5,'t2',10);

-- create table for cmpny drives

create table company_drives(
id int,
company_attended varchar(255)
);

insert into company_drives (id,company_attended) values (1,'bosch');
insert into company_drives (id,company_attended) values (1,'temenos');
insert into company_drives (id,company_attended) values (1,'chargebee');
insert into company_drives (id,company_attended) values (2,'oracle');
insert into company_drives (id,company_attended) values (3,'zoho');
insert into company_drives (id,company_attended) values (3,'zest');

-- create table for mentors

create table mentors(
mentorid int,
name varchar(255),
no_of_students int
);

insert into mentors (mentorid,name,no_of_students) values (1,'nagaraj',51);
insert into mentors (mentorid,name,no_of_students) values (2,'raghav',34);
insert into mentors (mentorid,name,no_of_students) values (3,'sanjay',29);
insert into mentors (mentorid,name,no_of_students) values (1,'deepa',19);
insert into mentors (mentorid,name,no_of_students) values (1,'anusya',72);

-- create table for cources

create table courses(
courseid varchar(255),
course_name varchar(255)
);

insert into courses (courseid,course_name) values ('001','Full stack');
insert into courses (courseid,course_name) values ('002','Data science');
insert into courses (courseid,course_name) values ('003','Automation testing');
insert into courses (courseid,course_name) values ('004','Ethical Hacking');
insert into courses (courseid,course_name) values ('005','Dev ops');


-- create table for student activated courses

create table student_activated_course (
stud_id int,
course_id varchar(255)
);

insert into student_activated_course (stud_id,course_id) values (1,'001');
insert into student_activated_course (stud_id,course_id) values (1,'002');
insert into student_activated_course (stud_id,course_id) values (1,'003');
insert into student_activated_course (stud_id,course_id) values (2,'001');
insert into student_activated_course (stud_id,course_id) values (3,'003');
insert into student_activated_course (stud_id,course_id) values (3,'002');
insert into student_activated_course (stud_id,course_id) values (4,'001');
insert into student_activated_course (stud_id,course_id) values (4,'002');
insert into student_activated_course (stud_id,course_id) values (5,'003');

-- get number problems solved in codekata by combining the users

select t1.id as userId, t1.name,t1.email,t2.problems_solved from users t1 join codekata t2 on t1.id = t2.id;

-- display the no of company drives attended by a user

select t1.id as userId,t1.name,count(company_attended) as total_company_attended from users t1 left join company_drives t2 on t1.id = t2.id group by t1.id; 

-- list all the mentors

select name as mentor_name from mentors;

-- list the number of students that are assigned for a mentor

select name as mentor_name,no_of_students from mentors;

-- combine and display students_activated_courses and courses for a specific user groping them based on the course



select t1.course_name,t2.stud_id,t3.name from courses t1 left join student_activated_course t2 on t1.courseid = t2.course_id left join users t3 on t2.stud_id = t3.id;



























