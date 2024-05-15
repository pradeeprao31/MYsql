use pooja1;

create table student(
id int primary key auto_increment,
name varchar(20),
email varchar(40) unique not null,
age int not null check(age>18),
city varchar(20) default 'patna'
);

desc student;


update student set city = 'bihar' where id =1;

select * from student;

select name,age from student;
-- relational operators like <,>,<=,>=,!= and so on
 
select * from student where age !=22;

select * from student where age >= 20 and age<=25;

select * from student where age between 20 and 25;

select * from student where age = 23 and city='patna';

select * from student where age = 23 or city='patna';


-- insert into student(name,email,age) value('hema','hemasingh@gmail.com',23)


