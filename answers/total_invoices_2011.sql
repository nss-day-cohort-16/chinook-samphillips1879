-- How many Invoices were there in 2011

SELECT COUNT(*) AS "Number of Invoices in 2011"
FROM Invoice
WHERE InvoiceDate LIKE "2011%"
ORDER BY InvoiceDate