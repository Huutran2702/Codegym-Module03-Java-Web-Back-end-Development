create database demo;
use demo;
create table Products (
Id int not null,
productCode varchar(10) not null,
productName varchar(50) not null,
productPrice double not null,
productAmount double not null,
productDescription text,
productStatus bit(1)
)
;
insert into products values (1,'TC102','Trà chanh',10000,120000,'50% trà + 50% nước cốt chanh',1),
(2,'TS103','Trà sữa',15000,200000,'50% trà + 50% sữa',1),
(3,'CF104','Cà phê',12000,150000,'Cà phê nguyên chất',1),
(4,'CFS10401','Cà phê sữa',15000,200000,'Cà phê nguyên chất + sữa',1);
create unique index id_productCode on products (productCode);
create index id_product on products (productName, productPrice);
select * from products;
create view product_view as select productCode, productName, productPrice, productStatus from products;