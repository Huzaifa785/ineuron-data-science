create database city_dataset;

use city_dataset;

select * from city;

## Q1. Query all columns for all American cities in the CITY table with populations larger than 100000.
## The CountryCode for America is USA.

select * from city where COUNTRYCODE = "USA" and population > 100000;

## Q2. Query the NAME field for all American cities in the CITY table with populations larger than 120000.
## The CountryCode for America is USA.

select name from city where COUNTRYCODE = "USA" and population > 120000;

## Q3. Query all columns (attributes) for every row in the CITY table.

select * from city;

## Q4. Query all columns for a city in CITY with the ID 1661.

select * from city where id = 1661;

## Q5. Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.

select * from city where COUNTRYCODE = "JPN";

## Q6. Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.

select name from city where COUNTRYCODE = "JPN";

## ----------------------------

select * from station;

## Q7. Query a list of CITY and STATE from the STATION table.

select city, state from station;

## Q8. Query a list of CITY names from STATION for cities that have an even ID number. Print the results
## in any order, but exclude duplicates from the answer.

select distinct city from station where id % 2 = 0;

## Q9. Find the difference between the total number of CITY entries in the table and the number of 
## distinct CITY entries in the table.

select count(city) - count(distinct city) as difference_city_entries from station;

## Q10. Query the two cities in STATION with the shortest and longest CITY names, as well as their
## respective lengths (i.e.: number of characters in the name). If there is more than one smallest or
## largest city, choose the one that comes first when ordered alphabetically.

select min(city) as city_name, length(min(city)) AS city_length from station order by city asc;

## Q11. Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION.
## Your result cannot contain duplicates.

select distinct city
from station
where
    substring(city, 1, 1) = 'A' or
    substring(city, 1, 1) = 'E' or
    substring(city, 1, 1) = 'I' or
    substring(city, 1, 1) = 'O' or
    substring(city, 1, 1) = 'U';
    
## Q12. Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot
## contain duplicates.

select distinct city
from station
where
    substring(city, -1, 1) = 'A' or
    substring(city, -1, 1) = 'E' or
    substring(city, -1, 1) = 'I' or
    substring(city, -1, 1) = 'O' or
    substring(city, -1, 1) = 'U';
    
## Q13. Query the list of CITY names from STATION that do not start with vowels. Your result cannot
## contain duplicates.

select distinct city
from station
where
    substring(city, 1, 1) not in ('A', 'E', 'I', 'O', 'U');
    
## Q14. Query the list of CITY names from STATION that do not end with vowels. Your result cannot
## contain duplicates.

select distinct city
from station
where
    substring(city, -1, 1) not in ('A', 'E', 'I', 'O', 'U');
    
## Q15. Query the list of CITY names from STATION that either do not start with vowels or do not end
## with vowels. Your result cannot contain duplicates.

select distinct city
from station
where
	substring(city, 1, 1) not in ('A', 'E', 'I', 'O', 'U')
    or
    substring(city, -1, 1) not in ('A', 'E', 'I', 'O', 'U');
    
## Q16. Query the list of CITY names from STATION that do not start with vowels and do not end with
## vowels. Your result cannot contain duplicates.

select distinct city
from station
where
	substring(city, 1, 1) not in ('A', 'E', 'I', 'O', 'U')
    and
    substring(city, -1, 1) not in ('A', 'E', 'I', 'O', 'U');
    
