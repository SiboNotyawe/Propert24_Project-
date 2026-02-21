--Display all properties in the database.
SELECT *
FROM dbo.property24_data

--Show only the CITY, PROVINCE, and PROPERTY_PRICE columns.
SELECT CITY, PROVINCE,PROPERTY_PRICE
FROM dbo.property24_data

--List all distinct provinces in the table.
SELECT DISTINCT PROVINCE
FROM dbo.property24_data

--Find all properties located in Gauteng.
SELECT *
FROM dbo.property24_data
WHERE PROVINCE ='Gauteng'

--Show properties priced under R1,500,000.
SELECT *
FROM dbo.property24_data
WHERE PROPERTY_PRICE < 1500000

--List properties with more than 3 bedrooms.
SELECT *
FROM dbo.property24_data
WHERE BEDROOMS > 3

--Find properties with parking for at least 2 cars.
SELECT *
FROM dbo.property24_data
WHERE PARKING >= 2

--Show properties where the monthly repayment is greater than R25,000.
SELECT *
FROM dbo.property24_data
WHERE Monthly_Repayment < 250000

--Show all properties ordered by property price from highest to lowest.
SELECT *
FROM dbo.property24_data
ORDER BY PROPERTY_PRICE DESC

--List properties ordered by floor size from smallest to largest.
SELECT *
FROM dbo.property24_data
ORDER BY FLOOR_SIZE 

--Show Gauteng properties ordered by monthly repayment.
SELECT *
FROM dbo.property24_data
WHERE PROVINCE = 'Gauteng'
ORDER BY Monthly_Repayment

--Find Western Cape properties priced below R3,000,000.
SELECT *
FROM dbo.property24_data
WHERE PROPERTY_PRICE < 3000000 AND PROVINCE = 'WESTERN CAPE'

--Show KwaZulu-Natal properties with 3 or more bedrooms.
SELECT *
FROM dbo.property24_data
WHERE BEDROOMS >= 3 AND PROVINCE = 'Kwazulu-Natal'

--Find properties in Limpopo or Free State ordered by property price.
SELECT *
FROM dbo.property24_data
WHERE PROVINCE IN ('WESTERN CAPE', 'Free State')
ORDER BY PROPERTY_PRICE 

--Show the 10 most expensive properties.
SELECT TOP 10 *
FROM dbo.property24_data
ORDER BY PROPERTY_PRICE DESC


--Show the 5 cheapest properties.
SELECT TOP 5 *
FROM dbo.property24_data
ORDER BY PROPERTY_PRICE ASC

--Show the top 10 properties with the largest floor size.
SELECT TOP 10 *
FROM dbo.property24_data
ORDER BY FLOOR_SIZE DESC

--Which province appears to have the highest priced properties?
SELECT TOP 1 *
FROM dbo.property24_data
ORDER BY PROPERTY_PRICE DESC

--Which cities appear to have the most affordable housing?
SELECT CITY, PROPERTY_PRICE
FROM dbo.property24_data
ORDER BY PROPERTY_PRICE ASC

--What minimum income is typically required for properties priced above R4,000,000?
SELECT MIN (Min_Gross_Monthly_Income) AS Min_Income
FROM dbo.property24_data
WHERE PROPERTY_PRICE > 4000000