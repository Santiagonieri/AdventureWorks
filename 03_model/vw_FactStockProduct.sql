
CREATE VIEW vw_FactStockProduct AS

SELECT [ProductKey]
      ,[DateKey]
      ,[UnitCost]
      ,[UnitsIn]
      ,[UnitsOut]
      ,[UnitsBalance]
  FROM [AdventureWorksDW2022].[dbo].[stg_StockProduct]
