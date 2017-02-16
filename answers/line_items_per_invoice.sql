-- Looking at the InvoiceLine table, provide a query that COUNTs the number 
-- of line items for each Invoice. 
-- HINT: [GROUP BY](http://www.sqlite.org/lang_select.html#resultset)

SELECT COUNT(*) as "Number of items per invoice", il.InvoiceId as "Invoice #"
FROM InvoiceLine il
GROUP BY il.InvoiceId