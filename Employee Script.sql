show databases;	
create database shiv;
use shiv;						
show tables;

# Table 1
create table Manufacturers(				
Code int(1),
Name varcharacter(20)
);

insert into Manufacturers(Code,Name)
values(1,"Sony"),
(2,"Creative Labs"),
(3,"Hewlett-Packard"),
(4,"Iomega"),
(5,"Fujitsu"),
(6,"Winchester");
select * from manufacturers;
		
# Table 2
create table Product(
Code int(2),
Name character(20),
Price int(5),
Manufacturers int(2)
);

insert into Product(Code, Name, Price, Manufacturers)
values(1, "Hard drive",240,5),
(2, "Memory",120,6),
(3, "ZIP drive",150,4),
(4, "Floppy disk",5,6),
(5, "Monitor",240,1),
(6, "DVD drive",180,2),
(7, "CD drive",90,2),
(8, "Printer",270,3),
(9, "Printer",66,3),
(10, "DVD burner",180,2);
select * from Product;
select* from manufacturers;


# 1 Select the names of all the products in the store. 
select name from product;
select distinct(name) from product;



# 2 Select the names and the prices of all the products in the store.
 select name,price from product;


# 3 Select the name of the products with a price less than or equal to $200. 
select name,price from product where price<=200;

# 4 Select all the products with a price between $60 and $120.
select * from product where price between 60 and 120;

# 5 Select the name and price in cents (i.e., the price must be multiplied by 100).
select name,price from product where price;
select name, price from product;

# 6 Compute the average price of all the products. 
select avg(price) from product;
select* from product;

# 7 Compute the average price of all products with manufacturer code equal to 2.
select manufacturers, avg(price) from product where manufacturers=2 group by Manufacturers ;

# 8 Compute the number of products with a price larger than or equal to $180. 
select count(code) from product where price>=180 ;

# 9 Select the name and price of all products with a price larger than or equal to $180, 
#and sort first by price (in descending order), and then by name (in ascending order). 
select name, price from product where price>=180 order by name asc,price desc;

# 10 Select all the data from the products, including all the data for each product's manufacturer.
select* from product join manufacturers  on product.Manufacturers =manufacturers.code;

# 11 Select the product name, price, and manufacturer name of all the products. 
select name,price,Manufacturers from product;

# *12 Select the average price of each manufacturer's products, showing only the manufacturer's code.
select manufacturers, avg(price) from product group by manufacturers;

# 13 Select the average price of each manufacturer's products, showing the manufacturer's name. 
select manufacturers.name as manu_name,avg(product.price) as avg_price from product
join manufacturers on product.Manufacturers= manufacturers.code
group by Manu_name order by avg_price desc;


# 14 Select the names of manufacturer whose products have an average 
#price larger than or equal to $150.
select manufacturers.name as manu_name,avg (product.price)as avg_price 
from product join manufacturers on product.Manufacturers= Manufacturers.Code 
group by Manu_name having avg(product.price)>150;




# 15 Select the name and price of the cheapest product. 
select name, price from product where price= (select min(price) from product);


#15 A Select the name and price of the MOST EXPENSIVE product. 
select name, price from product where price= (select max(price) from product);

# *16 Select the name of each manufacturer along with the name and price of its most expensive product. 
select * from product;
select* from manufacturers;

select manufacturers.name,max(product.price) from product join manufacturers 
on manufacturers.code=product.Manufacturers 
group by manufacturers.name order by max(product.price)desc limit 1;

# 17 Add a new product: Loudspeakers, $70, manufacturer 2.
insert  into product values
(11,'loudspeakers',70,2);


# 18 Update the name of product 8 to "Laser Printer". 
update product set name='laser_printer' where name='Printer';

# 19 Apply a 10% discount to all products. 
select *,	 price-price*90/100 as discount10 from product ;
select * from product ;

# 20 Apply a 10% discount to all products with a price larger than or equal to $120.
select * , price-price*90/100 as dd10 from product where price>=120;
