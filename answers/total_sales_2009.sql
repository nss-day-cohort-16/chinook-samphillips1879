-- What are the respective total sales for 2009

SELECT SUM(Total) as 'Total sales in 2009'
FROM Invoice
WHERE InvoiceDate LIKE '2009%'