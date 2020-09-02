create table board (
no  number primary key,
poster varchar2(20), 
subject varchar2(100),
contents varchar2(2000), 
lastpost date,
views number(5), 
filename varchar2(50)
);
create table member(
id number(10),
pw varchar2(100),
gender varchar2(20),
job varchar2(100),
mail varchar2(50),
Motive varchar2(100),
PRIMARY KEY (id));
