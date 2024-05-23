USE Northwind

--1. SELECT * FROM Customers;

--2. SELECT DISTINCT Country FROM Customers;

--3. SELECT * FROM Customers WHERE CustomerID LIKE 'BL%';

--4. SELECT TOP 100 * FROM Orders;

--5. SELECT * FROM Customers
--   WHERE PostalCode IN ('1010', '3012', '12209', '05023');

--6. SELECT * FROM Orders
--   WHERE ShipRegion IS NOT NULL;

--7.  SELECT * FROM Customers
--   ORDER BY Country, City;

--8.  INSERT INTO Customers(CustomerID, CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone, Fax)
--    VALUES ('BENJN', 'Bens Cool Stuff', 'Ben Jones', 'King', '1 Cool Guy St.', 'Detroit', 'MI', '48009', 'US', '248-123-4567', '248-890-1234');

--9.  UPDATE Orders
--   SET ShipRegion = 'EuroZone'
--   WHERE ShipCountry = 'France';

--10.DELETE FROM [Order Details]
--   WHERE Quantity = 1;

--11.SELECT Orders.CustomerID FROM Orders
--   WHERE OrderID = 10290;

--12.SELECT * From Customers
--   JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

--13.SELECT Employees.FirstName FROM Employees
--   WHERE ReportsTo IS NULL;

--14.SELECT Employees.FirstName FROM Employees
--   WHERE ReportsTo = (
--   	SELECT Employees.EmployeeID FROM Employees
--   	WHERE FirstName = 'Andrew'
--   );

--15.CREATE INDEX idx_CustomerID
--   ON Customers(CustomerID);

--EXTRA CHALLENGES

--1. SELECT AVG(Quantity), MAX(Quantity), MIN(Quantity) FROM [Order Details]
--   GROUP BY OrderID;

--2. SELECT AVG(Quantity), MAX(Quantity), MIN(Quantity) FROM [Order Details]

--3. SELECT * FROM Customers
--   WHERE City IN ('London', 'Paris');

--4. SELECT * FROM Customers
--   INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;
--   SELECT * FROM Customers
--   LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;
--   SELECT * FROM Customers
--   RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

--5. SELECT DISTINCT City From Customers
--   WHERE City IS NOT NULL;

--6. SELECT FirstName FROM Employees
--   ORDER BY FirstName;

--7. SELECT OrderID, SUM(UnitPrice * Quantity * (1 - Discount)) AS 'Total Cost' FROM [Order Details]
--   GROUP BY OrderID;

--8. SELECT * FROM Employees
--   WHERE HireDate > '1/1/1994';

--9. SELECT EmployeeID, DATEDIFF(year, HireDate, GETDATE()) AS 'Tenure' FROM Employees;

--10.SELECT * FROM Products
--   ORDER BY UnitsInStock asc;
--   SELECT * FROM Products
--   ORDER BY UnitsInStock desc;

--11.SELECT * FROM Products
--   WHERE UnitsInStock < 6;

--12.SELECT * FROM Products
--   WHERE Discontinued = 1;

--13.SELECT * FROM Products
--   WHERE ProductName LIKE '%tofu%';

--14.SELECT ProductName, UnitPrice FROM Products
--   WHERE UnitPrice = (
--	   SELECT MAX(UnitPrice) FROM Products
--   );

--15.SELECT * FROM Employees
--   WHERE HireDate > '1/1/1993'

--16.SELECT * FROM Employees
--   WHERE TitleOfCourtesy IN ('Ms.', 'Mrs.');

--17.SELECT * FROM Employees
--   WHERE HomePhone LIKE '(206)%';
