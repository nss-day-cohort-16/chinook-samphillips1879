-- Provide a query that shows all Invoices but includes the # of invoice line 
-- items.

SELECT COUNT(il.InvoiceId) AS "Number of Items on invoice", i.*
FROM Invoice i, InvoiceLine il
WHERE il.InvoiceId = i.InvoiceId
GROUP BY i.InvoiceId