
CREATE VIEW vs_DimGeography AS

SELECT [GeographyKey]
      ,[City]
      ,[StateProvinceCode]
      ,[StateProvinceName]
      ,[CountryRegionCode]
      ,[EnglishCountryRegionName]
      ,[SpanishCountryRegionName]
      ,[SalesTerritoryGroup]
      ,[SalesTerritoryRegion]
  FROM [AdventureWorksDW2022].[dbo].[stg_Geography]
