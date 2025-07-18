

CREATE VIEW vw_DimCustomer AS

SELECT 
	   [CustomerKey]
      ,[GeographyKey]
      ,[BirthDate]
      ,[MaritalStatus]
      ,[Gender]
      ,[YearlyIncome]
      ,REPLACE (DateFirstPurchase,'-','') DateFirstPurchase
	   
  FROM [AdventureWorksDW2022].[dbo].[DimCustomer]
