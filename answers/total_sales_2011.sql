-- What are the respective total sales for 2011

SELECT SUM(Total) as 'Total sales in 2011'
FROM Invoice
WHERE InvoiceDate LIKE '2011%'