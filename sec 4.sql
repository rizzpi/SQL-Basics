create database if not exists Sales;
use Sales;
create table customers
(
	customer_id int not null primary key,
    first_name varchar(255),
    last_name varchar(255),
    email_address varchar(250),
    number_of_complaints int
);
drop table sales;
CREATE TABLE sales 
(
	purchase_number INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    date_of_purchase DATE NOT NULL,     
    customer_id INT,
    item_code VARCHAR(10) NOT NULL
);
select * from sales;
select * from sales.sales;
drop table sales;

drop table customers;

create table customers
(
	customer_id int,
    first_name varchar(255),
    last_name varchar(255),
    email_address varchar(255),
    number_of_complaints int,
primary key(customer_id)
);

create table items
(
	item_code varchar(255),
    item varchar(255),
    unit_price numeric(10,2),
    company_id varchar(255),
primary key(item_code)
);

CREATE TABLE companies   

(

    company_id varchar(255),   

    company_name varchar(255),  

    headquarters_phone_number int(12),   

primary key (company_id)   

);


DROP TABLE customers;

DROP TABLE items;

DROP TABLE companies;



