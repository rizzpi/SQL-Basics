CREATE TABLE customers (

    customer_id INT AUTO_INCREMENT,

    first_name VARCHAR(255),

    last_name VARCHAR(255),

    email_address VARCHAR(255),

    number_of_complaints INT,

PRIMARY KEY (customer_id)

);

ALTER table customers
add column gender enum('M','F') after last_name;

insert into customers(first_name, last_name, gender, email_address, number_of_complaints)
values ('Rizuta', 'Pokharel', 'F', 'riz1@email.com', 2);
select * from customers;

CREATE TABLE companies
(
    company_id VARCHAR(255),
    company_name VARCHAR(255) DEFAULT 'X',
    headquarters_phone_number VARCHAR(255),
PRIMARY KEY (company_id),
UNIQUE KEY (headquarters_phone_number)
);

insert into companies(company_id,  headquarters_phone_number)
values (2204, '+977-9876234563');
 select * from companies;

 
 ALTER TABLE companies
MODIFY headquarters_phone_number VARCHAR(255) NULL;
ALTER TABLE companies

CHANGE COLUMN headquarters_phone_number headquarters_phone_number VARCHAR(255) NOT NULL;
