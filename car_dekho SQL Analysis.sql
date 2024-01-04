create schema cars;
use cars;

-- Read Data --
select*from car_dekho;

-- Total Cars = to get Count of Records --
select count(*) from car_dekho;

-- Manager asked the Employee how many cars are available in 2023 -- 
select count(*) from car_dekho where year = 2023;

-- Manager asked the Employee how many cars are available in 2020, 2021,2022 -- 
select count(*) from car_dekho where year = 2020;
select count(*) from car_dekho where year = 2021;
select count(*) from car_dekho where year = 2022;

select count(*) from car_dekho where year in (2020,2021,2022,2023) group by year; 

-- Print the Total of all cars by year without any other details --
select year, count(*) from car_dekho group by year; 

-- How many disel cars have in 2020 ? -- 
select count(*) from car_dekho where year = 2020 and fuel = "Disesl";

-- client requested a car dealer that how many petrol cars wil be there in 2020 ? --
select count(*) from car_dekho where year = 2020 and fuel = "Petrol";

-- Manager told the employee to print all the fuel cars all come by years-- 
select year, count(*) from car_dekho where fuel = "Petrol" group by year;
select year, count(*) from car_dekho where fuel = "Disel" group by year;
select year, count(*) from car_dekho where fuel = "CNG" group by year;

-- Find out the year which have more than 100 cars in a year  -- 
select year, count(*) from car_dekho group by year having count(*) > 100; 
select year, count(*) from car_dekho group by year having count(*) < 50;

-- All the cars count between year 2015 and 2023 print a compelete list --
select count(*) from car_dekho where year between 2015 and 2023;

-- All the cars details between year 2015 and 2023 print a compelete list --
select * from car_dekho where year between 2015 and 2023;
