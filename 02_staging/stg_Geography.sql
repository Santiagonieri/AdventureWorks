
CREATE VIEW stg_Geography AS

SELECT DG.[GeographyKey]
      ,DG.[City]
      ,DG.[StateProvinceCode]
      ,DG.[StateProvinceName]
      ,DG.[CountryRegionCode]
      ,DG.[EnglishCountryRegionName]
      ,DG.[SpanishCountryRegionName]
	  ,DST.SalesTerritoryGroup
	  ,DST.SalesTerritoryRegion

  FROM [AdventureWorksDW2022].[dbo].[DimGeography] AS DG
  LEFT JOIN [DimSalesTerritory] AS DST
  ON DST.SalesTerritoryKey=DG.SalesTerritoryKey