CREATE DATABASE WEB_BAN_HANG
CREATE TABLE ADMIN
(
adminID int PRIMARY KEY
,adminName varchar(255)
,adminEmail varchar(255)
,adminUser varchar(255)
,adminPass varchar(255)
,level0 int
)
CREATE TABLE BRAND
(
brandID int PRIMARY KEY
,brandName varchar(255)
,topBrand int
)
CREATE TABLE CART
(
cartID int PRIMARY KEY
,productID int FOREIGN KEY(productID) REFERENCES PRODUCT(productID)
,sld varchar(15)
,productName varchar(15) 
,price varchar(15)
,quantity int
,image0 varchar(15)
)
CREATE TABLE CATEGORY
(
cartID int PRIMARY KEY
,catName varchar(255)
)
CREATE TABLE COMPARE
(
id int PRIMARY KEY
,customerid int FOREIGN KEY(customerID) REFERENCES CUSTOMER(customerID)
,productID varchar(255)
,productName varchar(255)
,price varchar(255)
,image0 varchar(255)
)
CREATE TABLE CUSTOMER
(
customerid int PRIMARY KEY 
,name varchar(255)
,address0 varchar(255)
,city varchar(255)
,country varchar(255)
, zipcode varchar(255)
,phone varchar(255)
,email varchar(255)
,password0 varchar(255)
)
CREATE TABLE NEWS
(
newsID int PRIMARY KEY
,newsTitle varchar(255)
,newsImg varchar(255)
,newsContent text
,newsType varchar(255)
)
CREATE TABLE ORDER0
(
ID int 
,productID int 
,productName varchar(255) 
,customerid int 
,quantity int
,price varchar(255)
,image0 varchar(255)
,status0 int
,dateorder datetime
PRIMARY KEY(productID, customerID)
)
CREATE TABLE PRODUCT
(
productID int PRIMARY KEY
,productName text
,product_Code varchar(255)
,productQuantity varchar(255)
,procduct_Soldout varchar(255)
,product_Remain varchar(255)
,cartID int
,brandID int
,product_Desc text
,type0 int
,price varchar(255)
,image0 varchar(255)
)
CREATE TABLE SILDER
(
sliderID int PRIMARY KEY
,sliderName varchar(255)
,slider_Image varchar(255)
,type0 int
)
CREATE TABLE WAREHOUSE
(
IDWarehouse int PRIMARY KEY
,productID int FOREIGN KEY(productID) REFERENCES PRODUCT(productID)
,sl_Nhap varchar(255)
,sl_Ngaynhap timestamp
)
CREATE TABLE WISHLIST
(
ID int 
,customerID int
,productID int
,productName varchar(255)
,price varchar(255)
,image0 varchar(255)
)