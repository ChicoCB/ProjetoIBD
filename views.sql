DROP VIEW IF EXISTS clients_per_city;
DROP VIEW IF EXISTS clients_per_state;
DROP VIEW IF EXISTS clients_per_country;
DROP VIEW IF EXISTS sales_per_city;
DROP VIEW IF EXISTS sales_per_state;
DROP VIEW IF EXISTS sales_per_country;
DROP VIEW IF EXISTS sales_products_and_clients;
DROP VIEW IF EXISTS products_date_of_purchase;
DROP VIEW IF EXISTS clients_number_of_purchases;
DROP VIEW IF EXISTS previous_day_products_sales;

#clients_per_city
CREATE VIEW clients_per_city AS
    (SELECT 
        city, COUNT(client_id) AS number_of_clients
    FROM
        clients
            JOIN
        clients_adresses USING (client_id)
            JOIN
        adresses USING (adress_id)
    WHERE
        is_home_adress = TRUE
    GROUP BY city
    ORDER BY number_of_clients DESC);

#clients_per_state
CREATE VIEW clients_per_state AS
    (SELECT 
        state, COUNT(client_id) AS number_of_clients
    FROM
        clients
            JOIN
        clients_adresses USING (client_id)
            JOIN
        adresses USING (adress_id)
    WHERE
        is_home_adress = TRUE
    GROUP BY state
    ORDER BY number_of_clients DESC);

#clients_per_country
CREATE VIEW clients_per_country AS
    (SELECT 
        country, COUNT(client_id) AS number_of_clients
    FROM
        clients
            JOIN
        clients_adresses USING (client_id)
            JOIN
        adresses USING (adress_id)
    WHERE
        is_home_adress = TRUE
    GROUP BY country
    ORDER BY number_of_clients DESC);

#sales_per_city
CREATE VIEW sales_per_city AS
    (SELECT 
        city, COUNT(sale_id) AS number_of_sales
    FROM
        sales
            JOIN
        sales_adresses USING (sale_id)
            JOIN
        adresses USING (adress_id)
    GROUP BY city
    ORDER BY number_of_sales DESC);

#sales_per_state
CREATE VIEW sales_per_state AS
    (SELECT 
        state, COUNT(sale_id) AS number_of_sales
    FROM
        sales
            JOIN
        sales_adresses USING (sale_id)
            JOIN
        adresses USING (adress_id)
    GROUP BY state
    ORDER BY number_of_sales DESC);

#sales_per_country
CREATE VIEW sales_per_country AS
    (SELECT 
        country, COUNT(sale_id) AS number_of_sales
    FROM
        sales
            JOIN
        sales_adresses USING (sale_id)
            JOIN
        adresses USING (adress_id)
    GROUP BY country
    ORDER BY number_of_sales DESC);
    
CREATE VIEW sales_products_and_clients AS
(SELECT 
	*
FROM
	sales
		JOIN
	sales_products USING (sale_id)
		JOIN
	sales_clients USING (sale_id)
		JOIN
	clients USING (client_id)
ORDER BY sale_id);

CREATE VIEW products_date_of_purchase AS
    (SELECT 
        prod_id, purchase_date
    FROM
        sales_products_and_clients
    ORDER BY prod_id);
        
CREATE VIEW clients_number_of_purchases AS
    (SELECT 
        client_id, COUNT(sale_id) AS number_of_purchases
    FROM
        clients
            JOIN
        sales_clients USING (client_id)
            JOIN
        sales USING (sale_id)
    GROUP BY client_id
    ORDER BY number_of_purchases DESC);
    
CREATE VIEW previous_day_products_sales AS
	(SELECT 
		purchase_date, COUNT(prod_id) AS quantity_of_products_sold
	FROM
		products_date_of_purchase
	WHERE
		DATE_SUB(CURDATE(), INTERVAL 1 DAY) = purchase_date
	GROUP BY purchase_date
	ORDER BY quantity_of_products_sold);
