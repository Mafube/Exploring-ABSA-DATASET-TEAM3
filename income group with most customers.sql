--Which income_group  has the most customers
SELECT income_group_code, count(customer_identifier) AS customers FROM customer
GROUP BY income_group_code
ORDER BY customers DESC;
