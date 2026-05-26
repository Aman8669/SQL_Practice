SELECT * from products;

-- arrange the stocks as per conditions
SELECT product_name, category, price, quantity,
		CASE
			WHEN quantity >= 10 THEN 'In Stocks'
			WHEN quantity BETWEEN 5 AND 9 THEN 'Limited Stocks'
			ELSE 'Out of Stocks'
			END AS "Stock Status"
FROM products;

-- retrive the table as per category conditions
SELECT product_name, category,
		CASE
			WHEN category LIKE 'Electronics' THEN 'Electronic Item'
			WHEN category LIKE 'Furniture' THEN 'Furniture Item'
			WHEN category LIKE 'Accessories' THEN 'Accessories Item'
			END AS "Category_Type"
FROM products;