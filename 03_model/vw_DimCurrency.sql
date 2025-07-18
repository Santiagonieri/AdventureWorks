
CREATE VIEW vw_DimCurrency AS

SELECT [CurrencyKey]
      ,[DateKey]
      ,[AverageRate]
      ,[EndOfDayRate]
      ,[CurrencyAlternateKey]
      ,[CurrencyName]
  FROM [AdventureWorksDW2022].[dbo].[stg_CurrencyRate]
