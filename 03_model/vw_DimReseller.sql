CREATE VIEW vw_DimReseller AS

SELECT [ResellerKey]
      ,[GeographyKey]
      ,[BusinessType]
      ,[ResellerName]
      ,[FirstOrderYear]
      ,[LastOrderYear]
      ,[ProductLine]
      ,[OrderFrequency]
      ,[Revenue]
  FROM [AdventureWorksDW2022].[dbo].[stg_Resellers]
