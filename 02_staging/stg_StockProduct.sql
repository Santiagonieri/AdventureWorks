

CREATE VIEW stg_StockProduct AS

SELECT [ProductKey]
      ,[DateKey]
      ,[UnitCost]
      ,[UnitsIn]
      ,[UnitsOut]
      ,[UnitsBalance]
  FROM [AdventureWorksDW2022].[dbo].[FactProductInventory]
