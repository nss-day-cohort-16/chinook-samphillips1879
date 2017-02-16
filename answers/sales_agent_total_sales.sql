-- Provide a query that shows total sales made by each sales agent.

SELECT 
    sa.LastName as "Last Name",
    sa.FirstName as "First Name",
    ROUND(SUM(i.Total), 2) as "Total Sales"
FROM Employee sa, Invoice i, Customer c
WHERE i.CustomerId = c.CustomerId
AND c.SupportRepId = sa.EmployeeId
GROUP BY sa.LastName