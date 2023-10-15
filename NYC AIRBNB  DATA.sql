show databases;
use fingertips;

create table NYC_1(id int primary key auto_increment,	
name char(255) ,
host_id int,	
host_name char(255),	
neighbourhood_group char(255),	
neighbourhood char(255),
room_type char(255)
);

delete from nyc_1;
select * from nyc_1;
truncate from nyc_1; 

create table NYC
(id int primary key auto_increment,	
name char(255),
host_id int,	
host_name char(255),	
neighbourhood_group char(255),	
neighbourhood char(255),
room_type char(255)
);

select * from nyc;

create table NYC_2
(id int primary key auto_increment,
price int,
minimum_nights int,
number_of_reviews int,	
last_review date,
reviews_per_month float,	
calculated_host_listings_count int,
availability_365 int);

select * from nyc_2;


#1 write query to show name from NYC_1
select name from nyc;

#2. write query to show count of id in nyc_1
select count(id) from nyc;

#3. write query to show count of id in nyc_2
select count(id) from nyc_2;

#4. write query to show host id in nyc_1
select count(host_id) from nyc;

#5. write query to show all unique host id from nyc_1
select count(distinct host_id) from nyc;

#6. write query to show all unique neighbourhood_group from 
#nyc_1
select distinct neighbourhood_group from nyc;

#7. write query to show all unique neighbourhood from nyc_1
select distinct neighbourhood from nyc;

#8. write query to show room_type from nyc_1
select  room_type from nyc;


#9. write query to show all values of Brooklyn & Manhattan from 
#nyc_1
select * from nyc where  neighbourhood_group in ('Brooklyn','Manhattan');

#10. write query to show unique value of room type from nyc_1
select distinct room_type from nyc;

#11. write query to show maximum price from nyc_2
select min(price) from nyc_2 n ;


#12.write query to show maximum price from nyc_2
select max(price) from nyc_2 n ;


#13. write query to show average price from nyc_2
select avg(price) from nyc_2 n ;


#14.write query to show minimum value of minimum_nights from 
#nyc_2
select min(minimum_nights) from nyc_2 n ;


#15.write query to show maximum value of minimum_nights from 
#nyc_2
select max(minimum_nights) from nyc_2 n ;

#16. write query to show average availability_365
select avg(availability_365) from nyc_2 n;

#17.write query to show id , availability_365 and all availability_365 
#value is greater than 300
select id,availability_365 from nyc_2  where availability_365 >300;

#18. write query to show count of id where price is in between 300 to 
#400
select count(id) from nyc_2 n 
where price between 300 and 400;

#19. write query to show count of id where minimum_nights spend 
#is less than 5
select count(id) from nyc_2 n 
where minimum_nights < 5;

#20.write query to show count where minimum_nights spend is 
#greater than 100
select count(id) from nyc_2 n 
where minimum_nights >100;

#21. write query to show all data of nyc_1 & nyc_2
select * from nyc join nyc_2 
on nyc.id=nyc_2.id ;

#22. write query to show host name and price
select nyc.host_id ,nyc_2.price  from nyc join nyc_2 
on nyc.id=nyc_2.id ;

#23. write query to show room_type and price
select nyc.room_type ,nyc_2.price  from nyc join nyc_2 
on nyc.id=nyc_2.id ;

#24. write query to show neighbourhood_group&minimum_nights 
#spend
select nyc.neighbourhood_group ,nyc_2.minimum_nights from nyc join nyc_2 
on nyc.id=nyc_2.id ;

#25. write query to show neighbourhood & availability_365
select nyc.neighbourhood ,nyc_2.availability_365 from nyc join nyc_2 
on nyc.id=nyc_2.id ;

#27.write query to show maximum price by neighbourhood_group
select max(nyc_2.price),neighbourhood_group from  nyc join nyc_2 
on nyc.id=nyc_2.id group by neighbourhood_group ;

#28.write query to show maximum night spend by 
#neighbourhood_group
select max(nyc_2.minimum_nights),neighbourhood_group  from  nyc join nyc_2 
on nyc.id=nyc_2.id group by neighbourhood_group ;

#29.write query to show maximum reviews_per_month spend by 
#neighbourhood
select max(nyc_2.reviews_per_month) ,nyc.neighbourhood from  nyc join nyc_2 
on nyc.id=nyc_2.id group by neighbourhood ;

#30.write query to show maximum price by room type
select max(nyc_2.price),nyc.room_type from  nyc join nyc_2 
on nyc.id=nyc_2.id group by room_type ;

#31.write query to show average number_of_reviews by room_type
select ceil(avg(nyc_2.number_of_reviews)) ,nyc.room_type from  nyc join nyc_2 
on nyc.id=nyc_2.id group by room_type ;

#32.write query to show average price by room type
select round(avg(nyc_2.price),2),nyc.room_type from  nyc join nyc_2 
on nyc.id=nyc_2.id group by room_type ;


#33.write query to show average night spend by room type
select round(avg(nyc_2.minimum_nights)),nyc.room_type from  nyc join nyc_2 
on nyc.id=nyc_2.id group by room_type ;


#34.write query to show average price by room type but average 
#price is less than 100
select round(avg(nyc_2.price))as avg_price,nyc.room_type from  nyc join nyc_2 
on nyc.id=nyc_2.id group by room_type having avg_price<100 ;

#35.write query to show average night by neighbourhood and 
#average_nights is greater than 5
select round(avg(nyc_2.minimum_nights)) as avg_night,nyc.neighbourhood  from  nyc join nyc_2 
on nyc.id=nyc_2.id group by neighbourhood having avg_night>5 order by avg_night desc ;

#36. write query to show all data from nyc_1 and price is greater 
#than 200 using sub-query
select * from nyc where id in
(select id from nyc_2 where price >200);
                     
               #without subquery
select nyc.* from nyc join nyc_2 on nyc.id=nyc_2.id where price>200;

#37. write query to show all values from nyc_2 table and host id is 
#314941
select * from nyc_2  where id in 
(select id from nyc where host_id=314941);

 select nyc_2.* from nyc join nyc_2 on nyc.id=nyc_2.id where host_id=314941;

#38. Find all pairs of id having the same host id, each pair coming 
#once only.


#39.write sql query to show fetch all records that have the term cozy 
#in name
select name from nyc where name like "%cozy%";

#40. write query to show price host id neighbourhood_group of 
#manhattanneighbourhood_group
select distinct (nyc_2.price),nyc.host_id from nyc join nyc_2 
on nyc.id= nyc_2 .id  group by neighbourhood_group having neighbourhood_group ='manhattan';

#41.write query to show id , host name, neighbourhood and price 
#but only for Upper West Side & Williamsburg neighbourhood 
#also price is greater than 100
select nyc.id,nyc.host_id ,nyc.neighbourhood,nyc_2.price 
from nyc join nyc_2  on nyc.id=nyc_2.id 
where neighbourhood in ("Upper West Side" & "Williamsburg" ) and price>100;

select * from nyc;


#42.write query to show id , host name, neighbourhood and price for 
#host name Elise and neighbourhood is Bedford-Stuyvesant
select nyc.id,nyc.host_name ,nyc.neighbourhood,nyc_2.price 
from nyc join nyc_2  on nyc.id=nyc_2.id 
where neighbourhood="Bedford-Stuyvesant" and host_name="Elise";


#43. write query to show 
#host_name,availability_365,minimum_nights only for 100+ 
#availability_365 and minimum_nights
select n.host_name,n2.availability_365,n2.minimum_nights 
from nyc n join nyc_2 n2 on n.id=n2.id 
where availability_365>100 and minimum_nights>100;

#44. write query to show to fetch id ,host_name , number_of_reviews, 
#and reviews_per_month but show only that records where 
#number of reviews are 500+ and review per month is 5+
select n.id ,n.host_name , n2.number_of_reviews, n2.reviews_per_month 
from nyc n join nyc_2 n2 on n.id=n2.id 
where number_of_reviews >500 and reviews_per_month>5;
select * from nyc_2;

#45. write query to show neighbourhood_group which have most 
#total number of review
select n.neighbourhood_group ,sum(n2.number_of_reviews) as total_review
from nyc n join nyc_2 n2 on n.id=n2.id 
group by n.neighbourhood_group order by Total_review desc limit 1 ;


#46. write query to show host name which have most cheaper total 
#price

select n.host_name,sum(n2.price)total_price
from nyc n join nyc_2 n2 on n.id=n2.id 
group by n.host_name order by total_price asc limit 1;

#47. write query to show host name which have most costly total price
select n.host_name,sum(n2.price)total_price
from nyc n join nyc_2 n2 on n.id=n2.id 
group by n.host_name order by total_price desc limit 1;


#48. write query to show host name which have max price using subquery
select host_name from nyc where in 
(select max(price)from nyc_2)

select n.host_name,n2.price  from nyc n join nyc_2 n2 on n.id=n2.id
where  (select max(price) from nyc_2 ) order by price desc;



#49. write query to show neighbourhood_group which price are less 
#than 100
select n.neighbourhood_group, n2.price  from nyc n join nyc_2 n2 on n.id=n2.id
where n2.price <100;

#50. write query to find max price, average availability_365 for each 
#room type and order in ascending by maximum price
select max(n2.price) as max_price,avg(n2.availability_365),n.room_type
from nyc n join nyc_2 n2 on n.id=n2.id
group by n.room_type order by max_price asc;

select * from nyc_2 n 