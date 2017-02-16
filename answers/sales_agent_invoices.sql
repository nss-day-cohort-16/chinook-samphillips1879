-- Provide a query that shows the invoices associated with each sales agent. The 
-- resultant table should include the Sales Agent's full name.

SELECT sa.FirstName AS "Agent First Name", sa.LastName AS "Agent Last Name", i.invoiceId
FROM Employee sa, Invoice i, Customer c
Where sa.EmployeeId = c.SupportRepId
and i.CustomerId = c.CustomerId