CREATE VIEW vw_DimAccount AS


SELECT [AccountKey]
      ,[ParentAccountKey]
      ,[AccountCodeAlternateKey]
      ,[ParentAccountCodeAlternateKey]
      ,[AccountDescription]
      ,[AccountType]
      ,[Operator]

      ,[ValueType]

  FROM [AdventureWorksDW2022].[dbo].[DimAccount]
