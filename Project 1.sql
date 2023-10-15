create database project1;


use project1;

show tables;
select * from project11;


#1. WRITE a sql query to show all Item_Identifier
select item_identifier from project11;


#2. WRITE a sql query to show count of total Item_Identifier
select distinct( count(item_identifier)) from project11;

#3. WRITE a sql query to show maximum Item Weight
select max(item_weight) from project11;

#4. WRITE a query to show minimun Item Weight
select min(item_weight) from project11;

#5. WRITE a query to show average Item_Weight
select avg(item_weight) from project11;

#6. WRITE a query to show count OF Item_Fat_Content WHERE Item_Fat_Content IS Low Fat

select * from project11 where Item_Fat_Content='low_fat';


#7. WRITE a query to show count OF Item_Fat_Content WHERE Item_Fat_Content IS Regular

select * from project11 where Item_Fat_Content='regular';


#8. WRITE a query TO show maximum Item_MRP

select max(item_mrp) from project11;

#9. WRITE a query TO show minimum Item_MRP

select min(item_mrp) from project11;

#10.WRITE a query to show Item_Identifier , Item_Fat_Content ,Item_Type,Item_MRP and Item_MRP IS greater than 200

select item_identifier,item_fat_content,item_type,item_mrp from project11 where Item_MRP>=200;


#11.WRITE a query to show maximum Item_MRP WHERE Item_Fat_Content IS Low Fat
##################
select Item_Fat_Content,max(item_mrp) from project11 where Item_Fat_Content='low_fat';

#12.WRITE a query to show minimum Item_MRp AND Item_Fat_Content IS Low Fat
###################################
select Item_Fat_Content,min(item_mrp) from project11 where Item_Fat_Content='low_fat';

#13.WRITE a query to show ALL DATA WHERE item MRP IS BETWEEN 50 TO 100
select* from project11;
select * from project11 where Item_mrp between 50 and 100 ;


#14.WRITE a query to show ALL UNIQUE value Item_Fat_Content

select distinct (item_fat_content) from project11;

#15.WRITE a query to show ALL UNIQUE value Item_Type

select distinct (item_type) from project11;

#16.WRITE a query to show ALL DATA IN descending ORDER BY Item MRP

 select * from project11 order by item_mrp desc;

#17.WRITE a query to show ALL DATA IN ascending ORDER BY Item_Outlet_Sales

select * from project11 order by Item_Outlet_Sales asc;

#18.WRITE a query to show ALL DATA IN ascending BY Item_Type

select * from project11 order by item_type asc;

#19.WRITE a query to show DATA OF item_type dairy & Meat

select * from project11 where Item_Type in ('dairy','meat');

#20.WRITE a query to show ALL UNIQUE value OF Outlet_Size

select distinct(outlet_size) from project11;


#21.WRITE a query to show ALL UNIQUE value OF Outlet_Location_Type

select distinct (outlet_location_type) from project11 ;

#22.WRITE a query to show ALL UNIQUE value OF Outlet_Type

select distinct (outlet_type) from project11;

#23.WRITE a query to show count NO. OF item BY Item_Type AND ordered it IN descending

select item_type ,count(item) 

#24.WRITE a query to show count NO. OF item BY Outlet_Size AND ordered it IN ascending
select * from project11;
select outlet_size, count(item_identifier) as total from project11 
group by Outlet_Size 
order by total;


#25.WRITE a query to show count NO. OF item BY

select count(item_identifier) from project11;

#26.WRITE a query to show count NO. OF item BY Outlet_Type AND ordered it IN descending

select outlet_type, count(Item_Identifier) as total from project11 
group by Outlet_Type 
order by total desc;

#27.WRITE a query to show count of item BY Outlet_Location_Type AND ordered it IN descending

select outlet_location_type, count(item_identifier) as total from project11
group by Outlet_Location_Type 
order by total desc;

#28.WRITE a query to show maximum MRP BY Item_Type

select item_type, max(item_mrp) maxm from project11 
group by Item_Type order by maxm desc;


#29.WRITE a query to show minimum MRP BY Item_Type
select item_type, min(item_mrp) from project11 
group by item_type;

#30.WRITE a query to show minimum MRP BY Outlet_Establishment_Year AND ordered it IN descending

select outlet_establishment_year, min(item_mrp) minm from project11 
group by outlet_establishment_year order by minm desc ;

#31.WRITE a query to show maximum MRP BY Outlet_Establishment_Year AND ordered IN descending

select * from project11;
select Outlet_Establishment_Year, max(item_mrp) maxm from project11
group by Outlet_Establishment_Year order by maxm desc;

#32.WRITE a query to show average MRP BY Outlet_Size AND ordered IN descending

select outlet_size, avg(item_mrp) average from project11 
group by Outlet_Size order by average desc;

#33.WRITE a query to show average MRP BY Outlet_Size

select outlet_size, avg(item_mrp) average from project11 
group by Outlet_Size;

#34.WRITE a query to show Average MRP BY Outlet_Type AND ordered IN ascending

select outlet_type, avg(item_mrp) average from project11
group by Outlet_Type order by average asc;

#35.WRITE a query to show maximum MRP BY Outlet_Type

select outlet_type, max(item_mrp) maxm from project11 
group by Outlet_Type order by maxm;

#36.WRITE a query to show maximum Item_Weight BY Item_Type

select item_type, max(item_weight) maxw from project11 
group by item_type order by maxw;

#37.WRITE a query to show maximum Item_Weight BY Outlet_Establishment_Year

select Outlet_Establishment_Year, max(item_weight) maxw from project11 
group by Outlet_Establishment_Year 
order by maxw;
#38.WRITE a query to show minimum Item_Weight BY Outlet_Type

select outlet_type, min(item_weight) minm from project11 
group by Outlet_Type 
order by minm;

#39.WRITE a query to show average Item_Weight BY Outlet_Location_Type ORDER BY descending

select Outlet_Location_Type, avg(item_weight) avgw from project11
group by Outlet_Location_Type 
order by avgw desc;

#40.WRITE a query to show maximum Item_Outlet_Sales BY Item_Type

select item_type, max(item_outlet_sales) maxs from project11
group by Item_Type order by maxs ;

#41.WRITE a query to show minimum Item_Outlet_Sales BY Item_Type

select item_type, min(item_outlet_sales) mins from project11
group by item_type order by mins ;

#42.WRITE a query to show minimum Item_Outlet_Sales BY Outlet_Establishment_Year

select Outlet_Establishment_Year, min(Item_Outlet_Sales) mins from project11 
group by Outlet_Establishment_Year order by mins;

#43.WRITE a query to show maximum Item_Outlet_Sales BY Outlet_Establishment_Year ordered BY descending

select Outlet_Establishment_Year, max(Item_Outlet_Sales) maxs from project11 
group by Outlet_Establishment_Year order by maxs desc;

#44.WRITE a query to show average Item_Outlet_Sales BY Outlet_Size AND ORDER it itn descending

select outlet_size, avg(Item_Outlet_Sales) avgs from project11
group by outlet_size order by avgs desc;

#45.WRITE a query to show average Item_Outlet_Sales BY Outlet_Size

select outlet_size, avg(Item_Outlet_Sales) avgs from project11 
group by Outlet_Size order by avgs;

#46.WRITE a query to show average Item_Outlet_Sales BY Outlet_Type

select outlet_type, avg(Item_Outlet_Sales) avgs from project11
group by Outlet_Type  order by avgs;

#47.WRITE a query to show maximum Item_Outlet_Sales BY Outlet_Type

select outlet_type, max(Item_Outlet_Sales) maxs from project11 
group by Outlet_Type order by maxs;


#48.WRITE a query to show total Item_Outlet_Sales BY

select count(item_outlet_sales) from project11 ;

#49.WRITE a query to show total Item_Outlet_Sales BY Item_Type

select item_type, count(Item_Outlet_Sales) total from project11
group by item_type order by total;

#50.WRITE a query to show total Item_Outlet_Sales BY

select count(item_outlet_sales) from project11 ;

#51.WRITE a query to show total Item_Outlet_Sales BY Item_Fat_Content

select item_fat_content, count(Item_Outlet_Sales) total from project11
group by item_fat_content order by total;

#52.WRITE a query to show maximum Item_Visibility BY Item_Type

select item_type, max(item_visibility) vis from project11 
group by item_type order by vis;

#53.WRITE a query to show Minimum Item_Visibility BY Item_Type

select item_type, min(item_visibility) mvis from project11
group by item_type order by mvis;

#54.WRITE a query to show total Item_Outlet_Sales BY Item_Type but ONLY WHERE Outlet_Location_Type IS Tier 1

select 


select* from project11;
\###########################################################

#55.WRITE a query to show total Item_Outlet_Sales BY Item_Type WHERE Item_Fat_Content IS ONLY Low Fat & LF

select item_type, count(item_outlet_sales) csales from project11
group by item_type having(select Item_Fat_Content from project11 where Item_Fat_Content='low_fat' )
order by csales;
########################