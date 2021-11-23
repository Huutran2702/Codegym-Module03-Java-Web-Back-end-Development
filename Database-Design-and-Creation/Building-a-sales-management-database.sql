create database QuanLyBanHang;
use QuanLyBanHang;
create table Customer (
cID int primary key,
cName varchar(50),
cAge int
);
create table Orders(
oID int primary key,
cID int, foreign key (cID) references Customer(cID),
oDate date,
oTotalPrice double
);
create table Product (
pID int primary key,
pName varchar (50),
pPrice double
);
create table OrderDetail (
oID int, foreign key (oID) references Orders (oID),
pID int , foreign key (pID) references Product (pID),
odQTY int 
);
