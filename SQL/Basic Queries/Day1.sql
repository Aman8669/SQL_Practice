CREATE TABLE custumer(
	id int primary key,
	name varchar(50) NOT NULL,
	age int NOT NULL,
	city char(50),
	salary numeric,
	order_date TIMESTAMP default current_timestamp
);

select * from custumer;

insert into custumer (id, name, age, city, salary)
values
(1,'aman',22,'rendal',25000),
(2,'atul',24,'ichalakanji',30000),
(3,'ayan',23,'shapur',45000),
(4,'mk',23,'jat',15000);
