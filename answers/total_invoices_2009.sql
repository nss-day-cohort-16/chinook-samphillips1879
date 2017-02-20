-- How many Invoices were there in 2009

SELECT COUNT(*) AS "Number of Invoices in 2009"
FROM Invoice
WHERE InvoiceDate LIKE "2009%"
ORDER BY InvoiceDate