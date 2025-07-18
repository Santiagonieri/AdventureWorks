
CREATE VIEW vw_FactFinancial AS

SELECT [FinanceKey]
      ,[DateKey]
      ,[OrganizationName]
      ,[DepartmentGroupName]
      ,[ScenarioName]
      ,[AccountKey]
      ,[Amount]
  FROM [AdventureWorksDW2022].[dbo].[stg_Financie]
