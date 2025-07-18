CREATE VIEW stg_Financie AS

SELECT FF.[FinanceKey]
      ,[DateKey]
      ,DO.OrganizationName
	  ,DG.DepartmentGroupName
	  ,DS.ScenarioName
      ,[AccountKey]
      ,[Amount]

  FROM [AdventureWorksDW2022].[dbo].[FactFinance] FF
  LEFT JOIN DimScenario AS DS
  ON DS.ScenarioKey=FF.ScenarioKey
  LEFT JOIN DimOrganization AS DO
  ON DO.OrganizationKey=FF.OrganizationKey
  LEFT JOIN DimDepartmentGroup AS DG
  ON DG.DepartmentGroupKey=FF.DepartmentGroupKey