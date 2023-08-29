/* Which country's customers spent the most? */

SELECT MAX(TotalSales), BillingCountry
FROM
(SELECT SUM(i.Total) AS TotalSales,
i.BillingCountry
FROM Invoice i 
GROUP BY i.BillingCountry)
