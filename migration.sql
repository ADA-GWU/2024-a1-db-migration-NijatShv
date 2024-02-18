create table STUDENTS(
	ST_ID integer primary key not null,
	ST_NAME varchar(20) not null,
	ST_LAST varchar(20) not null
);

insert into STUDENTS values(1, 'Konul', 'Gurbanova');
insert into STUDENTS values(2, 'Shahnur', 'Isgandarli');
insert into STUDENTS values(3, 'Natavan', 'Mammadova');

create table INTERESTS(
	STUDENT_ID integer not null,
	INTEREST varchar(20) not null
);

insert into INTERESTS values(1, 'Tennis');
insert into INTERESTS values(1, 'Literature');
insert into INTERESTS values(2, 'Math');
insert into INTERESTS values(2, 'Tennis');
insert into INTERESTS values(3, 'Math');
insert into INTERESTS values(3, 'Music');
insert into INTERESTS values(2, 'Football');
insert into INTERESTS values(1, 'Chemistry');
insert into INTERESTS values(3, 'Chess');

alter table STUDENTS add STUDENT_ID integer;
update STUDENTS set STUDENT_ID = ST_ID;

alter table STUDENTS add ST_NAME1 varchar(30);
update STUDENTS set ST_NAME1 = ST_NAME;
alter table STUDENTS add ST_LAST1 varchar(30);
update STUDENTS set ST_LAST1 = ST_LAST;


create table INTERESTS_NEW(
	STUDENT_ID integer not null,
	INTERESTS text[]
);

insert into INTERESTS_NEW values(1,'{"Tennis", "Literature", "Chemistry"}');
insert into INTERESTS_NEW values(2,'{"Math", "Tennis", "Football"}');
insert into INTERESTS_NEW values(3,'{"Math", "Music", "Chess"}');


alter table STUDENTS drop column ST_ID;

select * from students;

alter table STUDENTS drop column ST_NAME;
alter table STUDENTS drop column ST_LAST;
alter table STUDENTS rename ST_NAME1 to ST_NAME;
alter table STUDENTS rename ST_LAST1 to ST_LAST;

drop table INTERESTS;
alter table INTERESTS_NEW rename to INTERESTS;

