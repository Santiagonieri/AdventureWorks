
CREATE VIEW stg_CurrencyRate AS

SELECT 
	FC.CurrencyKey,
	FC.DateKey,
	FC.AverageRate,
	FC.EndOfDayRate,
	DC.CurrencyAlternateKey,
	DC.CurrencyName

  FROM [AdventureWorksDW2022].[dbo].[FactCurrencyRate] FC

  LEFT JOIN DimCurrency AS DC

  ON DC.CurrencyKey=FC.CurrencyKey


