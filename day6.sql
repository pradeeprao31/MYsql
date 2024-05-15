 use pooja1;
 
 -- Right join 
 select * from Deparments left join employees1 on Deparments.id = employees1.did  
-- order by Deparments.id
 where employees1.salery=30000;
 
 -- full join 
  select * from Deparments full join employees1 ;
  -- on Deparments = employees1  
-- order by Deparments.id
 -- where employees1.salery=30000;
 
 
-- aggregate function 
-- count(), max(), min(), ava()

select * from employees1;

select count(*) from employees1;

select max(salery) from employees1;

select min(salery) from employees1;

select sum(salery) from employees1;

select avg(salery) from employees1;

-- group by -- aggregate function  

select * from student;

select count(*),city from student 
group by city;