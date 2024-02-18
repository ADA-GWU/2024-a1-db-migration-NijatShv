alter table STUDENTS add ST_ID integer;
update STUDENTS set ST_ID = STUDENT_ID;

select * from students;

--Step 6 Here the idea is to change the length and to create new columns with string30 data type.
alter table STUDENTS add ST_NAME1 varchar(20);
update STUDENTS set ST_NAME1 = ST_NAME;
alter table STUDENTS add ST_LAST1 varchar(20);
update STUDENTS set ST_LAST1 = ST_LAST;

alter table STUDENTS drop column STUDENT_ID;

select * from students;

--Step 10 In this stage i drop column st_name and renamed the created column like original one 
alter table STUDENTS drop column ST_NAME;
alter table STUDENTS drop column ST_LAST;
alter table STUDENTS rename ST_NAME1 to ST_NAME;
alter table STUDENTS rename ST_LAST1 to ST_LAST;


select * from interests;

create table INTERESTS_NEW(
	STUDENT_ID integer not null,
	INTEREST varchar(20) not null
);

select * from INTERESTS_NEW;

insert into INTERESTS_NEW values(1, 'Tennis');
insert into INTERESTS_NEW values(1, 'Literature');
insert into INTERESTS_NEW values(2, 'Math');
insert into INTERESTS_NEW values(2, 'Tennis');
insert into INTERESTS_NEW values(3, 'Math');
insert into INTERESTS_NEW values(3, 'Music');
insert into INTERESTS_NEW values(2, 'Football');
insert into INTERESTS_NEW values(1, 'Chemistry');
insert into INTERESTS_NEW values(3, 'Chess');

drop table INTERESTS;
alter table INTERESTS_NEW rename to INTERESTS;

select * from interests;