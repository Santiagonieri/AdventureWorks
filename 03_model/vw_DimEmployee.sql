CREATE VIEW vw_DimEmployee AS 

SELECT [EmployeeKey]
      ,[ParentEmployeeKey]
	  ,CASE WHEN DS.SalesTerritoryCountry ='NA' THEN '-'
	        ELSE DS.SalesTerritoryCountry
			END AS SalesTerritoryCountry
	  ,CASE WHEN DS.SalesTerritoryGroup ='NA' THEN '-'
	        ELSE DS.SalesTerritoryGroup
			END AS SalesTerritoryGroup
	  ,CASE WHEN DS.SalesTerritoryRegion ='NA' THEN '-'
	        ELSE DS.SalesTerritoryRegion
			END AS SalesTerritoryRegion
      ,[Title]
      ,[HireDate]
      ,[BirthDate]
	  ,DATEDIFF(yyyy,[BirthDate],CAST(GETDATE() AS DATE)) AS YearOld
	  ,CASE WHEN [Status]='Current'
			THEN DATEDIFF(yyyy,[HireDate],CAST(GETDATE() AS DATE)) 
			ELSE DATEDIFF(yyyy,[HireDate],[EndDate]) 
			END AS ActiveYears
      ,[MaritalStatus]
      ,[Gender]
      ,[DepartmentName]
      ,[StartDate]
      ,[EndDate]
      ,CASE WHEN [Status] IS NULL Then 'Disaffected'
			ELSE [Status]
			END AS [Status]

  FROM [AdventureWorksDW2022].[dbo].[DimEmployee] DE
  LEFT JOIN DimSalesTerritory as DS
  ON DS.SalesTerritoryKey=DE.SalesTerritoryKey