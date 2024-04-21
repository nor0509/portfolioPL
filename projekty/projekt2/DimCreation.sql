
--Tabela faktu sprzedaży.

DROP VIEW IF EXISTS factSales_view
GO

CREATE VIEW factSales_view AS

	SELECT
		Header.SalesOrderID,
		Detail.ProductID,
		Header.CustomerID,
		Header.SalesPersonID AS EmployeeID,
		Header.ShipToAddressID AS [AddressID],
		REPLACE(CONVERT(date, Header.OrderDate), '-', '') AS [OrderDateID],
		REPLACE(CONVERT(date, Header.ShipDate), '-', '') AS [ShipDateID],
		Detail.OrderQty AS Quantity,
		Detail.UnitPrice AS [Unit Price],
		Detail.UnitPriceDiscount AS [Unit Price Discount],
		Header.OnlineOrderFlag,
		Header.Freight,
		Header.ShipMethodID,
		Header.[Status]

	FROM 
		sales.SalesOrderHeader AS Header 
			INNER JOIN sales.SalesOrderDetail AS Detail 
			ON Header.SalesOrderID = detail.SalesOrderID
	WHERE 
		year(Header.OrderDate) > (SELECT max(year(OrderDate)) - 4 
								  FROM sales.SalesOrderHeader);

GO

--Tabela faktu produkcji
DROP VIEW IF EXISTS factProduction_view

GO

CREATE VIEW factProduction_view AS
SELECT DISTINCT
	WorkOrder.WorkOrderID,
	Product.ProductID,
	REPLACE(CONVERT(date, Routing.ScheduledStartDate), '-', '') AS [ScheduledStartDateID],
	REPLACE(CONVERT(date, Routing.ScheduledEndDate), '-', '') AS [ScheduledEndDateID],
	REPLACE(CONVERT(date, Routing.ActualStartDate), '-', '') AS [ActualStartDateID],
	REPLACE(CONVERT(date, Routing.ActualEndDate), '-', '') AS [ActualEndDateID],
	WorkOrder.OrderQty AS [Ordered Quantity],
	WorkOrder.StockedQty AS [Stocked Quantity],
	WorkOrder.ScrappedQty AS [Scrapped Quantity],
	WorkOrder.ScrapReasonID AS [ScrapReasonID],
	DATEDIFF(DAY, Routing.ScheduledEndDate, Routing.ActualEndDate) AS [Delayed Days]


FROM 
	Production.Product AS Product 
		INNER JOIN Production.WorkOrderRouting AS Routing on Product.ProductID = Routing.ProductID
		INNER JOIN Production.WorkOrder AS WorkOrder on Routing.WorkOrderID = WorkOrder.WorkOrderID
WHERE 
	(year(WorkOrder.StartDate) > (SELECT max(year(WorkOrder.StartDate)) - 4 
									FROM Production.WorkOrder));


GO

--Utworzenie DimProduct
DROP VIEW IF EXISTS dimProduct_view

GO

CREATE VIEW dimProduct_view AS

SELECT 
	Product.ProductID,
	Product.[Name],
	CASE
		WHEN Product.MakeFlag = 0 THEN 'Purchased'
		WHEN Product.MakeFlag = 1 THEN 'Manufactured'
	END AS Make,
	Product.Color,
	Product.Size,
	Product.SizeUnitMeasureCode,
	Product.ProductLine,
	Product.Style,
	Sub.[Name] AS Subcategory, 
	Cat.[Name] AS Category,
	Product.StandardCost

FROM 
	Production.Product AS Product 
		INNER JOIN Production.ProductSubcategory AS Sub on Sub.ProductSubcategoryID = Product.ProductSubcategoryID
		INNER JOIN Production.ProductCategory AS Cat on Cat.ProductCategoryID = Sub.ProductCategoryID;

GO

--Utworzenie DimGeo
DROP VIEW IF EXISTS dimGeo_view

GO

CREATE VIEW dimGeo_view AS

SELECT
	[Address].AddressID,
	[Address].City,
	StateProvince.[Name] AS [State or Province],
	Territory.[Name] AS Territory,
	Country.CountryRegionCode,
	CASE
		WHEN Country.CountryRegionCode IN ('GB','DE','FR') THEN 'Europe'
		WHEN Country.CountryRegionCode IN ('US', 'CA') THEN 'North America'
		WHEN Country.CountryRegionCode = 'AU' THEN 'Australia'
	END AS Continent

FROM
	Person.[Address] AS [Address]
		INNER JOIN Person.StateProvince AS StateProvince ON StateProvince.StateProvinceID = [Address].StateProvinceID
		INNER JOIN Sales.SalesTerritory AS Territory ON Territory.TerritoryID = StateProvince.TerritoryID
		INNER JOIN Person.CountryRegion AS Country ON StateProvince.CountryRegionCode = Country.CountryRegionCode
	

GO

--Utworzenie dimCustomer
DROP VIEW IF EXISTS dimCustomer_view

GO

CREATE VIEW dimCustomer_view AS

SELECT 
	Customer.CustomerID,
	Store.[Name] AS Store,
	FirstOrders.FirstOrderID
FROM
	Sales.Customer AS Customer
		INNER JOIN Sales.Store AS Store ON Customer.StoreID = Store.BusinessEntityID
		INNER JOIN (select CustomerID, min(OrderDateID) as FirstOrderID from factSales_view group by CustomerID) AS FirstOrders 
			on FirstOrders.CustomerID = Customer.CustomerID;

GO

--Utworzenie DimDate
GO
DROP VIEW IF EXISTS dimDate_view

GO

CREATE VIEW dimDate_view AS

SELECT
	REPLACE(CONVERT(date, Data), '-', '') AS DateID,
	[Data] as [Date],
	DATENAME(month, [Data]) as [Month Name],
	DATENAME(weekday, [Data]) as [Week Day],
	(CONVERT(varchar(4), YEAR([Data])) + '-Q' + CONVERT(varchar(1), DATEPART(QUARTER, [Data]))) AS Quarter
	
FROM TableDates

GO

--Utworzenie dimShipMethod

DROP VIEW IF EXISTS dimShipMethod_view

GO

CREATE VIEW dimShipMethod_view AS

SELECT
	ShipMethodID,
	Name
FROM
	Purchasing.ShipMethod





