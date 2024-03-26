-- Task 1: using COUNT, get the number of cities in the USA

SELECT CountryCode, COUNT(DISTINCT Name) AS 'no.cities'
FROM city
WHERE CountryCode='USA'
GROUP BY CountryCode;
-- ANSWER: 264


-- Task 2: Find out what the population and average life expectancy for people in Argentina (ARG) is:

SELECT Code, Name, population, AVG(LifeExpectancy)
FROM country
WHERE Code LIKE 'ARG'
GROUP BY Code;
-- ANSWER: population=37032000, average life expectancy=75.10000

-- Task 3 using ORDER BY, LIMIT, what country has the highest life expectancy?

SELECT Name, code, LifeExpectancy
FROM country
ORDER BY LifeExpectancy DESC
LIMIT 1;
-- ANSWER: Andorra

-- Task 4: Select 25 cities around the world that start with the letter 'F' in a single SQL query.

SELECT Name
FROM city
WHERE Name LIKE 'F%'
LIMIT 25;
-- ANSWER: Within the query output

-- Task 5: Create a SQL statement to display columns Id, Name, Population from the city table and limit results to first 10 rows only.

SELECT ID, Name, Population
FROM city
LIMIT 10;
-- ANSWER: Within the query output

-- Task 6: Create a SQL statement to find only those cities from city table whose population is larger than 2000000.

SELECT Name, Population
FROM city
WHERE Population>2000000;
-- ANSWER: Within the query output

-- Task 7: Create a SQL statement to find all city names from city table whose name begins with “Be” prefix.

SELECT Name
FROM city
WHERE Name LIKE 'Be%';
-- ANSWER: Within the query output

-- Task 8: Create a SQL statement to find only those cities from city table whose population is between 500000-1000000.

SELECT Name, Population
FROM city
WHERE Population BETWEEN 500000 AND 1000000;
-- ANSWER: Within the query output

-- Task 9: Create a SQL statement to find a city with the lowest population in the city table.

SELECT MIN(Population)
FROM city;
-- OR
SELECT Name, Population
FROM city
ORDER BY Population ASC
LIMIT 1;
-- ANSWER: Adamstown

-- Task 10: Create a SQL statement to find the capital of Spain (ESP).

SELECT Capital AS Capital_ID, country.Name AS Country_Name, city.Name AS Capital_City
FROM country
INNER JOIN city ON country.Capital=city.ID
WHERE country.Name='Spain';
-- ANSWER: Madrid

-- Task 11: Create a SQL statement to list all the languages spoken in the Caribbean region.

SELECT Region, Language
FROM country
INNER JOIN countrylanguage ON country.Code=countrylanguage.CountryCode
WHERE country.Region='Caribbean';
-- ANSWER: Within the query output

-- Task 12: Create a SQL statement to find all cities from the Europe continent.

SELECT Continent, city.Name AS City
FROM country
INNER JOIN city ON country.Code=city.CountryCode
WHERE Continent='Europe';
-- ANSWER: Within the query output

-- Task 13:
/*

1) Identity the primary key in country table.

ANSWER: Primary Key within the ‘country table’ is ‘Code’

2) Identify the primary key in city table.

ANSWER: Primary Key within the ‘city’ table is ‘ID’

3) Identify the primary key in ‘countrylanguage’ table.

ANSWER: Primary Key within the ‘countrylanguage’ table is ‘CountryCode’

4) Identify the foreign key in city table.

ANSWER: Foreign Key within the ‘city’ table is ‘CountryCode’

5) Identify the foreign key in ‘countrylanguage’ table.

ANSWER: Foreign Key within the ‘countrylanguage’ table is ‘CountryCode’

*/




