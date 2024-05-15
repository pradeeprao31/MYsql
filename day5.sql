use pooja1;

create table Deparments(
id int primary key auto_increment,
name varchar(30) not null unique

);

insert into Deparments(name) value ('sales') ,('HR'),('MANAGER'),('IT');

select *from Deparments
order by id;


create table employees1
( id int primary key auto_increment, 
name varchar(39) not null unique,
salery int,
did int,
foreign key(did) references Deparments(id)
);

insert into employees1(name,salery,did) value
('pooja',54000,4),
('neha',23000,1),
('nivha',34000,2),
('muskan',45000,3),
('sudha',35000,1),
('mahima',45000,2),
('keshar',33000,4),
('riya',30000,4);

insert into employees1(name,salery,did) value
('priyajoti',30000,2);
update employees1 set name='priya' where id=10;
update Deparments set name='HR' where id=10;

select * from employees1;



create table bankdetial
(  id int primary key auto_increment,
acc_no varchar(15) not null unique,
bank_name varchar(50) not null ,
eid int,
foreign key (eid) references employees1(id)
);


insert into bankdetial(acc_no,bank_name,eid) value
('36130123857','SBI',1),
('778456421','BOB',3),
('87954612315','ICICI',4),
('94587451264','PNB',2),
('99998451264','SBI',5),
('44451264','HDFC',6),
('3517451264','FID',8),
('9874510165264','PNB',7),
('64582156764','ICICI',2);



select * from bankdetial;


-- joint in the table 
-- types of jion  inner join, left join , right join , cross join / full join , equi join 

-- inner join 

-- syntex  select * from table 1/ left table inner join table 2/ right join table on relationship 
 
 select * from Deparments inner join employees1 on Deparments.id = employees1.did 
 -- order by Deparments.id
 
 where employees1.name='pooja';
 
 
 -- left join
 -- syntex select * from table1/ left table left join table table2/right join table on relationship
 
 select * from Deparments left join employees1 on Deparments.id = employees1.did  
-- order by Deparments.id
 where employees1.salery=30000;
 
 -- Right join
 -- syntex select * from table1/ right table right join table table2/left join table on relationship
 
  select * from Deparments right  join employees1 on Deparments.id = employees1.did  
-- order by Deparments.id
 where employees1.salery=30000;
 
 
 