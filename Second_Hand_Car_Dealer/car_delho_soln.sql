create schema car_dekho;

use car_dekho;
-- Read Data --
select * from car_dekho;

-- Total Cars: To get a count of Total records --
select count(*) from car_dekho;

-- The manager Asked the employee How many cars will be available in 2023 -- 
select count(*) from car_dekho where year= 2023;

-- The manager Asked the employee How many cars will be available in 2020,2021,2022 -- 
select count(*) from car_dekho where year= 2020; #74
select count(*) from car_dekho where year= 2021; #7
select count(*) from car_dekho where year= 2022; #7
-- group by--
select count(*) from car_dekho  where year in (2020,2021,2022) group by year; 

-- Client asked me to print the total of all cars by year. I dont see all the details --
select year,count(*) from car_dekho group by year;

-- Client asked  to car dealer agent, How many diesel cars will there be in 2020? --
select count(*) from car_dekho where year= 2020 and fuel ="Diesel";#20

-- Client asked  to car dealer agent, How many Petrol cars will there be in 2020? --
select count(*) from car_dekho where year= 2020 and fuel ="Petrol"; #51

-- The manager Asked the employee to give print All the fuel cars (petrol,diesel,CNG) come by all year--
select year,count(*) from car_dekho where fuel ="Petrol" group by year;
select year,count(*) from car_dekho where fuel ="diesel" group by year;
select year,count(*) from car_dekho where fuel ="CNG" group by year;

-- The manager said there were more than 100 cars in the given year, which year had more than 100 cars --
select year,count(*) from car_dekho group by year having count(*)>100;

-- The manager said to the employee, All cars count details between 2015 and 2023; we need a complete list --
select year,count(*) from car_dekho where year between 2015 and 2023 group by year order by year;

-- The manager said to the employee, All cars  details between 2015 and 2023; we need a complete list --
select * from car_dekho where year between 2015 and 2023; 
