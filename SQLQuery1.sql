create database Course
use Course

create table Teachers(
Id int primary key identity(1,1),
Name nvarchar(50),
Surname nvarchar(50),
Email nvarchar(50),
Age int,
Salary decimal
)

insert into Teachers(Name,Surname,Email,Age,Salary)
values('Kamran','Ebilov','kamran74@mail.ru',34,900),
      ('Sevinc','Eliyeva','sevinc32@yahoo.com',32,1000),
      ('Huseyn','Isgenderzade','huseyn123@code.edu.az',38,3200),
      ('Cabir','Memmedov','cabir54_@mail.ru',39,3100),
      ('Bahar','Ceferova','bahar89@gmail.com',29,2000),
      ('Cemil','Huseynov','cemil45@yahoo.com',40,2500),
	  ('Rasim','Hesimov','rasim946@mail.ru',38,3500)

select * from Teachers

-- 1 - Query
declare @average decimal(10,2)
select @average = AVG(Age) from Teachers
select * from Teachers where Age > @average
-- 2 - Query
select * from Teachers where Salary >= 1000 and Salary <= 3000
-- 3 - Query
select Name,Surname from Teachers where Email like '%mail.ru'
-- 4 - Query
select * from Teachers where Name like 'c%'