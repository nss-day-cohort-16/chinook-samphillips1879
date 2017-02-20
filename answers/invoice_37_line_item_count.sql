-- Looking at the InvoiceLine table, provide a query that COUNTs the number 
-- of line items for Invoice ID 37

SELECT COUNT(*) as "Number of items on Invoice 37"
FROM InvoiceLine
WHERE InvoiceId = 37