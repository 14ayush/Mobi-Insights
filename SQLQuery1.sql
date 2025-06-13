--create the database 
CREATE DATABASE MOBILE;
USE MOBILE;

--CREATING THE TABLE IN IT 
CREATE TABLE MobileSales (
    TransactionID INT PRIMARY KEY,
    Day INT,
    Month INT,
    Year INT,
    DayName VARCHAR(10),
    Brand VARCHAR(50),
    UnitsSold INT,
    PricePerUnit DECIMAL(10, 2),
    CustomerName VARCHAR(100),
    CustomerAge INT,
    City VARCHAR(100),
    PaymentMethod VARCHAR(50),
    CustomerRatings DECIMAL(2, 1),
    MobileModel VARCHAR(100)
);

--making the connection 
EXEC sp_configure 'show advanced options', 1;
RECONFIGURE;
EXEC sp_configure 'Ad Hoc Distributed Queries', 1;
RECONFIGURE;

--excel to database 
INSERT INTO MobileSales
SELECT *
FROM OPENROWSET(
    'Microsoft.ACE.OLEDB.12.0',
    'Excel 12.0;Database=E:\MyProjects\Mobi-Insights\Mobile Sales Data.xlsx;HDR=YES;IMEX=1',
    'SELECT * FROM [Sheet1$]'
);