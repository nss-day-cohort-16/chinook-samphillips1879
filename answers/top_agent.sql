-- Which sales agent made the most in sales over all?

SELECT 
    MAX(i.totalSales) as "Top Performer's Total Sales Value", 
    e.FirstName as "First Name", 
    e.LastName as "Last Name"
FROM (
    SELECT 
        ROUND(SUM(i.Total), 2) as "totalSales", 
        i.CustomerId as "CustomerId"
    FROM Invoice i, Employee em, Customer cu
    WHERE i.CustomerId = cu.CustomerId
    AND cu.SupportRepId = em.EmployeeId
    GROUP BY em.EmployeeId

) i, Employee e, Customer c 
WHERE i.CustomerId = c.CustomerId
AND c.SupportRepId = e.EmployeeId