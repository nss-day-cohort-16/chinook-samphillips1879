-- Provide a query that shows the # of invoices per country. 
-- HINT: [GROUP BY](http://www.sqlite.org/lang_select.html#resultset)

SELECT 
    COUNT(*) AS "Number of invoices per country", 
    BillingCountry AS "Country"
FROM Invoice
GROUP BY BillingCountry