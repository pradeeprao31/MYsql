-- create database pooja1;

 use pooja1;

create table Detial(
name varchar(30),
age int(42) ,
number int(78),
bf varchar(39)

);

-- show tables; use to check all the table avalible in the schema

-- desc Detial; is used ot describe the table details 
-- ddl = create , alter, drop
-- dml = insert ,delete, update, select 
INSERT INTO Detial VALUES ("ooja", 20, 979, 'pra'),
("rooja", 20, 979, 'pra'),
("pooja", 20, 979, 'pra'),
("sooja", 20, 979, 'pra')
;
select * from Detial;