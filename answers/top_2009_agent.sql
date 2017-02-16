-- Which sales agent made the most in sales in 2009?
-- Hint: Use the MAX (https://www.sqlite.org/lang_aggfunc.html#maxggunc) 
-- function on a subquery
-- (http://beginner-sql-tutorial.com/sql-subquery.htm).


SELECT MAX(i.totalSales) as "2009's Top Performer's Total Sales Value", e.FirstName as "First Name", e.LastName as "Last Name"
FROM (
    SELECT SUM(i.Total) as "totalSales", i.CustomerId as "CustomerId"
    FROM Invoice i
    WHERE i.InvoiceDate LIKE "2009%"
) i, Employee e, Customer c 
WHERE i.CustomerId = c.CustomerId
AND c.SupportRepId = e.EmployeeId
