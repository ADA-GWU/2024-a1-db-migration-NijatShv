--Creation of STUDENTS table with ST_ID, ST_NAME, ST_LAST columns
create table STUDENTS(
	ST_ID integer primary key not null,
	ST_NAME varchar(20) not null,
	ST_LAST varchar(20) not null
);
--Populating STUDENTS table with given data in task
insert into STUDENTS values(1, 'Konul', 'Gurbanova');
insert into STUDENTS values(2, 'Shahnur', 'Isgandarli');
insert into STUDENTS values(3, 'Natavan', 'Mammadova');
--Creation of INTERESTS table with STUDENT_ID, and INTEREST
create table INTERESTS(
	STUDENT_ID integer not null,
	INTEREST varchar(20) not null
);
--Adding values to fill columns
insert into INTERESTS values(1, 'Tennis');
insert into INTERESTS values(1, 'Literature');
insert into INTERESTS values(2, 'Math');
insert into INTERESTS values(2, 'Tennis');
insert into INTERESTS values(3, 'Math');
insert into INTERESTS values(3, 'Music');
insert into INTERESTS values(2, 'Football');
insert into INTERESTS values(1, 'Chemistry');
insert into INTERESTS values(3, 'Chess');
--Renaming the column and add new one
alter table STUDENTS add STUDENT_ID integer;
update STUDENTS set STUDENT_ID = ST_ID;
--Changing the length and to create new columns with string30 data type
alter table STUDENTS add ST_NAME1 varchar(30);
update STUDENTS set ST_NAME1 = ST_NAME;
alter table STUDENTS add ST_LAST1 varchar(30);
update STUDENTS set ST_LAST1 = ST_LAST;
--Droped st_id column
alter table STUDENTS drop column ST_ID;
--Droped column st_name, st_last and renamed the created column like original one 
alter table STUDENTS drop column ST_NAME;
alter table STUDENTS drop column ST_LAST;
alter table STUDENTS rename ST_NAME1 to ST_NAME;
alter table STUDENTS rename ST_LAST1 to ST_LAST;
--Creation copy of the table of interest and make changes on it
create table INTERESTS_NEW(
	STUDENT_ID integer not null,
	INTERESTS text[]
);
--Inserting the values to populate the table
insert into INTERESTS_NEW values(1,'{"Tennis", "Literature", "Chemistry"}');
insert into INTERESTS_NEW values(2,'{"Math", "Tennis", "Football"}');
insert into INTERESTS_NEW values(3,'{"Math", "Music", "Chess"}');
select * from interests_new;
--Droped the original table and renamed the created table like original one
drop table INTERESTS;
alter table INTERESTS_NEW rename to INTERESTS;

