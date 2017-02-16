-- Provide a query that shows the Invoice Total, Customer name, Country and Sale 
-- Agent name for all invoices and customers.

SELECT 
    i.Total AS "Invoice Total", 
    c.FirstName AS "Customer First Name", 
    c.LastName AS "Customer Last Name",
    c.Country,
    sa.FirstName AS "Sales Agent First Name",
    sa.LastName AS "Sales Agent Last Name"
FROM Invoice i, Customer c, Employee sa
WHERE i.CustomerId = c.CustomerId
AND c.SupportRepId = sa.EmployeeId
ORDER BY c.LastName