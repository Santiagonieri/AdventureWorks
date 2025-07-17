
CREATE VIEW stg_Calendar AS

SELECT [DateKey]
      ,[FullDateAlternateKey] As Date
      ,[DayNumberOfWeek]
      ,[EnglishDayNameOfWeek]
      ,[SpanishDayNameOfWeek]
      ,[DayNumberOfMonth]
      ,[DayNumberOfYear]
      ,[WeekNumberOfYear]
      ,[EnglishMonthName]
      ,[SpanishMonthName]
      ,[MonthNumberOfYear]
      ,[CalendarQuarter]
      ,[CalendarYear]
      ,[CalendarSemester]
      ,[FiscalQuarter]
      ,[FiscalYear]
      ,[FiscalSemester]
  FROM [AdventureWorksDW2022].[dbo].[DimDate]
