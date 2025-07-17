
CREATE VIEW stg_InernetAndResellerSales AS

SELECT[ProductKey]
      ,[OrderDateKey]--DimDate
      ,[DueDateKey]--DimDate
      ,[ShipDateKey]--DimDate
      ,[CustomerKey]-- DimCustomer
      ,
		NULL AS ResellerKey, --DimReseller
		NULL as EmployeeKey
      ,[PromotionKey]
      ,[CurrencyKey]
      ,[SalesTerritoryKey]
      ,[SalesOrderNumber]
      ,[OrderQuantity]
      ,[UnitPrice]
      ,[ExtendedAmount]
      ,[UnitPriceDiscountPct]
      ,[DiscountAmount]
      ,[ProductStandardCost]
      ,[TotalProductCost]
      ,[SalesAmount]
      ,[TaxAmt]
      ,[Freight]
  FROM [AdventureWorksDW2022].[dbo].[FactInternetSales]

UNION

SELECT [ProductKey]
      ,[OrderDateKey]
      ,[DueDateKey]
      ,[ShipDateKey],
	   NULL AS CustomerKey
      ,[ResellerKey]
      ,[EmployeeKey]
      ,[PromotionKey]
      ,[CurrencyKey]
      ,[SalesTerritoryKey]
      ,[SalesOrderNumber]
      ,[OrderQuantity]
      ,[UnitPrice]
      ,[ExtendedAmount]
      ,[UnitPriceDiscountPct]
      ,[DiscountAmount]
      ,[ProductStandardCost]
      ,[TotalProductCost]
      ,[SalesAmount]
      ,[TaxAmt]
      ,[Freight]
  FROM [AdventureWorksDW2022].[dbo].[FactResellerSales]
