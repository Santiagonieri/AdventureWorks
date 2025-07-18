
CREATE VIEW vw_FactSalesQuotas AS

SELECT [SalesQuotaKey]
      ,[EmployeeKey]
      ,[DateKey]
      ,[SalesAmountQuota]
FROM [AdventureWorksDW2022].[dbo].[stg_SalesQuota]
