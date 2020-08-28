create table board (
no  number primary key,--
poster varchar2(20), --작성자 
subject varchar2(100), --제목
contents varchar2(2000), --내용
lastpost date,
views number(5), --조회
filename varchar2(50) --
);
create table member(
id number(10),
pw varchar2(100),
gender varchar2(20),
job varchar2(100),
mail varchar2(50),
Motive varchar2(100),
PRIMARY KEY (id));
