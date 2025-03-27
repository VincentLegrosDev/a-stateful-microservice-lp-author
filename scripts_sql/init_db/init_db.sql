create database IF NOT EXISTS order_management;
create user 'vlegros'@'%' identified by 'whalehello';
grant INSERT, UPDATE, DELETE, SELECT, CREATE, DROP, ALTER on order_management.* to 'vlegros'@'%';

USE order_management; 

CREATE OR REPLACE TABLE orders (
    order_id int primary key NOT NULL AUTO_INCREMENT, 
    product_id int DEFAULT 0
    quantity int 
    subtotal foat 
    shipping_address NVARCHAR(1024)
    shipping_zip NVARCHAR(10)
    total float
}; 


