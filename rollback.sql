--Adding new new column st_id to STUDENTS table and updating it
alter table STUDENTS add ST_ID integer;
update STUDENTS set ST_ID = STUDENT_ID;
--Changing the length and to create new columns with string20 data type
alter table STUDENTS add ST_NAME1 varchar(20);
update STUDENTS set ST_NAME1 = ST_NAME;
alter table STUDENTS add ST_LAST1 varchar(20);
update STUDENTS set ST_LAST1 = ST_LAST;
--Droped student_id, st_name, and st_last columns
alter table STUDENTS drop column STUDENT_ID;
alter table STUDENTS drop column ST_NAME;
alter table STUDENTS drop column ST_LAST;
--Renaming the created column like original one
alter table STUDENTS rename ST_NAME1 to ST_NAME;
alter table STUDENTS rename ST_LAST1 to ST_LAST;

--Creation copy of the table of interest and make changes on it
create table INTERESTS_NEW(
	STUDENT_ID integer not null,
	INTEREST varchar(20) not null
);
--Adding values to fill columns
insert into INTERESTS_NEW values(1, 'Tennis');
insert into INTERESTS_NEW values(1, 'Literature');
insert into INTERESTS_NEW values(2, 'Math');
insert into INTERESTS_NEW values(2, 'Tennis');
insert into INTERESTS_NEW values(3, 'Math');
insert into INTERESTS_NEW values(3, 'Music');
insert into INTERESTS_NEW values(2, 'Football');
insert into INTERESTS_NEW values(1, 'Chemistry');
insert into INTERESTS_NEW values(3, 'Chess');
--Droped the original table and renamed the created table like original one
drop table INTERESTS;
alter table INTERESTS_NEW rename to INTERESTS;
