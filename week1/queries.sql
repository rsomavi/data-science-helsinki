-- 1. Employees hired after January 1st, 1994
SELECT FirstName, LastName, HireDate FROM Employees WHERE HireDate > '1994-01-01';

-- 2. Orders per customer
SELECT CustomerID, COUNT(*) as OrderCount FROM Orders GROUP BY CustomerID;

-- 3. Customers who ordered "Chai"
SELECT DISTINCT c.CompanyName FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
JOIN OrderDetails od ON o.OrderID = od.OrderID
JOIN Products p ON od.ProductID = p.ProductID
WHERE p.ProductName = 'Chai';

-- 4. Orders not yet shipped
SELECT OrderID, CustomerID, OrderDate FROM Orders WHERE ShippedDate IS NULL;

-- 5. Customer with most orders
SELECT c.CompanyName, COUNT(*) as OrderCount FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID ORDER BY OrderCount DESC LIMIT 1;
