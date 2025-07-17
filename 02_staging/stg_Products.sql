
CREATE VIEW stg_Products AS

SELECT 
		DP.[ProductKey]
	  ,CASE WHEN DPSC.SpanishProductSubcategoryName IS NULL Then '-'
			ELSE DPSC.SpanishProductSubcategoryName
			END AS SpanishProductSubcategoryName
	  ,CASE WHEN DPSC.EnglishProductSubcategoryName IS NULL Then '-'
			ELSE DPSC.EnglishProductSubcategoryName
			END AS EnglishProductSubcategoryName
	  ,CASE WHEN DPC.SpanishProductCategoryName IS NULL Then '-'
			ELSE DPC.SpanishProductCategoryName
			END AS SpanishProductCategoryName
	  ,CASE WHEN DPC.EnglishProductCategoryName IS NULL Then '-'
			ELSE DPC.EnglishProductCategoryName
			END AS EnglishProductCategoryName
      ,DP.[EnglishProductName]
      ,DP.[SpanishProductName]
      ,DP.[FinishedGoodsFlag]
      ,CASE WHEN DP.[Color] = 'NA' THEN 'Not Applicable'
			ELSE DP.[Color]
			END AS [Color]
      ,DP.[SafetyStockLevel]
      ,DP.[ReorderPoint]
      ,CASE WHEN DP.[ListPrice] IS NULL Then 0
			ELSE DP.ListPrice
			END AS ListPrice
      ,CASE WHEN DP.[DealerPrice] IS NULL Then 0
			ELSE DP.[DealerPrice]
			END AS [DealerPrice]
      ,CASE WHEN DP.[StandardCost] IS NULL Then 0
			ELSE DP.[StandardCost]
			END AS [StandardCost]
      ,CASE WHEN DP.[SizeUnitMeasureCode] IS NULL THEN '-'
			ELSE DP.[SizeUnitMeasureCode]
			END AS [SizeUnitMeasureCode]
	  ,CASE WHEN DP.[SizeUnitMeasureCode] IS NULL THEN '-'
			ELSE DP.[Size]
			END AS [Size]
      ,CASE WHEN DP.[SizeRange] = 'NA' THEN '-'
			ELSE DP.[SizeRange]
			END AS [SizeRange]
	  ,CASE WHEN DP.WeightUnitMeasureCode IS NULL THEN '-'
			ELSE DP.WeightUnitMeasureCode
			END WeightUnitMeasureCode
	  ,CASE WHEN DP.WeightUnitMeasureCode IS NULL THEN '-'
			ELSE CAST(DP.Weight AS VARCHAR(10))
			END Weight
      ,DP.[DaysToManufacture]
      ,CASE WHEN DP.[ModelName] IS NULL THEN '-'
			ELSE DP.[ModelName]
			END AS [ModelName]
      ,CASE WHEN DP.[EnglishDescription] IS NULL THEN '-'
			ELSE DP.[EnglishDescription]
			END AS [EnglishDescription]
      ,CAST(DP.[StartDate] AS DATE) [StartDate]
      ,CAST(DP.[EndDate] AS DATE) [EndDate]
      ,CASE WHEN DP.[Status] IS NULL THEN 'Offline'
			ELSE DP.[Status] 
			END AS [Status]
  FROM [AdventureWorksDW2022].[dbo].[DimProduct] DP
  LEFT JOIN DimProductSubcategory  DPSC
  ON DPSC.ProductSubcategoryKey=DP.ProductSubcategoryKey
  LEFT JOIN DimProductCategory DPC
  ON DPC.ProductCategoryKey=DPSC.ProductCategoryKey

