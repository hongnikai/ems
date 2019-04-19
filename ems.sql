create table usertable(
username varchar2(20) primary key ,
password varchar2(8) not null,
name varchar2(20) not null,
deleflg number(1) not null,
sex number(1) not null,
credate varchar2(8) not null,
upddate varchar2(8)
)
 
insert into usertable values('aaa','aaa','liuce',0,1,'20170101','20170101') 
select * from usertable; 
 
 
create table emptable(
empId varchar2(6) primary key,
empName varchar2(20) not null,
salary number(8,2),
job number(2),
deleflg number(1) not null,
other varchar2(20)
 ) 
 
insert into emptable values('11','aa',888.22,00,0,'其他');
insert into emptable values('22','bb',999.22,10,0,'其他的');
insert into emptable values('33','cc',888.22,00,0,'其他');
insert into emptable values('44','dd',999.22,10,0,'其他的');
 
select * from emptable
 