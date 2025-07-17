CREATE VIEW stg_resellers AS
SELECT
ResellerKey,
GeographyKey,
BusinessType,
UPPER(LEFT(ResellerName,1))+LOWER(SUBSTRING(ResellerName,2,LEN(ResellerName))) AS ResellerName,
FirstOrderYear,
LastOrderYear,
ProductLine,
OrderFrequency,
CASE	
		WHEN AnnualRevenue>= 300000 then 'Hight'
		WHEN AnnualRevenue>= 100000 then 'Medium'
		ELSE 'Low'
		END AS 'Revenue'

FROM DimReseller 