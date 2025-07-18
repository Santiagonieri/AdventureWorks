
CREATE VIEW stg_Promotion AS

SELECT [PromotionKey]
      ,[EnglishPromotionName]
      ,[SpanishPromotionName]
      ,[DiscountPct]
      ,[EnglishPromotionType]
      ,[SpanishPromotionType]
      ,[EnglishPromotionCategory]
      ,[SpanishPromotionCategory]
      ,REPLACE (dbo.Fn_ConvertirADate(StartDate),'-','') AS StartDate
      ,REPLACE (dbo.Fn_ConvertirADate([EndDate]),'-','') AS EndDate
      ,[MinQty]
      ,[MaxQty]
	 
  FROM [AdventureWorksDW2022].[dbo].[DimPromotion]
