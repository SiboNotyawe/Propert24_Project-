CREATE DATABASE Property24;
GO

USE Property24;
GO

CREATE TABLE Propertydetails (
    Country VARCHAR(250),
    Province VARCHAR(250),
    City VARCHAR(250),
    Bedrooms INT, 
    Bathrooms INT,
    Parking INT,
    Floorsize INT,
    Monthly_Repayment INT,
    Total_Once_Off_Costs INT,
    Property_Price INT,
    MIN_Gross_Monthly_Income INT
);
INSERT INTO Propertydetails (
    Country,
    Province,
    City,
    Bedrooms,
    Bathrooms,
    Parking,
    Floorsize,
    Monthly_Repayment,
    Total_Once_Off_Costs,
    Property_Price,
    MIN_Gross_Monthly_Income
)
VALUES (
    'South Africa',
    'EC',
    'Johannesburg',
    4,
    6,
    1,
    5,
    5000,
    80000,
    120000,
    25000   
);

SELECT *
FROM Property24.dbo.Propertydetails