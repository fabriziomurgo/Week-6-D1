SHOW DATABASES;
USE AdventureWorksDW;
SELECT * FROM dimproduct;
SELECT ProductKey, ProductAlternateKey AS Product_Code, EnglishProductName AS Product_Name, Color,StandardCost AS Cost, FinishedGoodsFlag AS Finished_Product 
FROM dimproduct;
SELECT ProductKey, ProductAlternateKey AS Product_Code, EnglishProductName AS Product_Name, Color,StandardCost AS Cost, FinishedGoodsFlag AS Finished_Product 
FROM dimproduct
WHERE FinishedGoodsFlag = 1 ;
SELECT ProductKey, ProductAlternateKey, ModelName AS Model, EnglishProductName, SpanishProductName, FrenchProductName, StandardCost AS Cost, ListPrice
FROM dimproduct 
WHERE ProductAlternateKey 
LIKE 'FR%' OR ProductAlternateKey  LIKE 'BK%';
SELECT ProductKey, ProductAlternateKey, ModelName AS Model, EnglishProductName, SpanishProductName, FrenchProductName, StandardCost AS Cost, ListPrice, ListPrice-StandardCost AS Profit
FROM dimproduct 
WHERE ProductAlternateKey 
LIKE 'FR%' OR ProductAlternateKey  LIKE 'BK%';
SELECT FinishedGoodsFlag AS Finished_Peroduct, EnglishProductName AS English_Product, SpanishProductName AS Spanish_Product, FrenchProductName AS France_Product, ListPrice
FROM dimproduct
WHERE ListPrice BETWEEN 1000 AND 2000 AND FinishedGoodsFlag = 1;
SELECT * FROM dimemployee;
SELECT * FROM dimemployee
WHERE SalesPersonFlag = 1;
SELECT * FROM factresellersales;
SELECT ProductKey, SalesOrderNumber AS Order_Number, SalesAmount - TotalProductCost AS Profit 
FROM factresellersales
WHERE OrderDate>= '2020-1-1' AND ProductKey IN (597, 598, 477, 214);





