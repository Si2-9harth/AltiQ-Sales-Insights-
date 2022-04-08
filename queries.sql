SELECT * FROM sales.customers;

SELECT count(*) FROM sales.customers;

SELECT * FROM sales.transactions where market_code='Mark001';

SELECT distinct product_code FROM transactions where market_code='Mark001';

SELECT * from transactions where currency="USD";

SELECT transactions.*, date.* FROM transactions INNER JOIN date ON transactions.order_date=date.date where date.year=2020;

SELECT SUM(sales.transactions.sales_amount) 
FROM sales.transactions 
INNER JOIN sales.date 
ON sales.transactions.order_date=sales.date.date 
WHERE date.year=2020;

SELECT SUM(sales.transactions.sales_amount) FROM sales.transactions 
INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date 
where sales.date.year=2020 and sales.date.month_name="January" and (sales.transactions.currency="INR\r" or sales.transactions.currency="USD\r");

SELECT SUM(transactions.sales_amount) 
FROM sales.transactions 
INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date 
where sales.date.year=2020 and sales.transactions.market_code="Mark001";

