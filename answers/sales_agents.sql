-- Provide a query showing only the Employees who are Sales Agents.

SELECT *
FROM Employee
WHERE ReportsTo = "2"