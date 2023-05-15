DROP VIEW IF EXISTS clients_per_neighborhood;
DROP VIEW IF EXISTS clients_per_city;
DROP VIEW IF EXISTS clients_per_state;
DROP VIEW IF EXISTS clients_per_country;
DROP VIEW IF EXISTS sales_per_city;
DROP VIEW IF EXISTS sales_per_state;
DROP VIEW IF EXISTS sales_per_country;
DROP VIEW IF EXISTS sales_products_and_clients;
DROP VIEW IF EXISTS sales_per_day;
DROP VIEW IF EXISTS sales_per_week;
DROP VIEW IF EXISTS sales_per_month;
DROP VIEW IF EXISTS clients_number_of_purchases;
DROP VIEW IF EXISTS clients_number_of_purchases30D;
DROP VIEW IF EXISTS clients_number_of_purchases60D;
DROP VIEW IF EXISTS clients_number_of_purchases90D;
DROP VIEW IF EXISTS previous_day_products_sales;
DROP VIEW IF EXISTS week_products_sales;

#clients per neighborhood
CREATE VIEW clients_per_neighborhood AS
    (SELECT 
        neighborhood, COUNT(client_id) AS number_of_clients
    FROM
        clients
            JOIN
        clients_adresses USING (client_id)
            JOIN
        adresses USING (adress_id)
    WHERE
        is_home_adress = TRUE
    GROUP BY neighborhood
    ORDER BY number_of_clients DESC);

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
    
CREATE VIEW sales_per_day AS
    (SELECT 
        purchase_date, COUNT(sale_id) AS number_of_sales
    FROM
        sales
    GROUP BY purchase_date);
    
CREATE VIEW sales_per_week AS
    (SELECT 
        WEEK(purchase_date) AS week_number, COUNT(sale_id) AS number_of_sales
    FROM
        sales
    GROUP BY week_number);
    
CREATE VIEW sales_per_month AS
    (SELECT 
        MONTH(purchase_date) AS month_number, COUNT(sale_id) AS number_of_sales
    FROM
        sales
    GROUP BY month_number);

#all sales
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
		JOIN
	products USING(prod_id)
ORDER BY sale_id);

CREATE VIEW clients_number_of_purchases AS
    (SELECT 
        client_id, full_name, COUNT(sale_id) AS number_of_purchases
    FROM
        clients
            JOIN
        sales_clients USING (client_id)
            JOIN
        sales USING (sale_id)
    GROUP BY client_id
    ORDER BY number_of_purchases DESC);

CREATE VIEW clients_number_of_purchases30D AS
    (SELECT 
        client_id, full_name, COUNT(sale_id) AS number_of_purchases
    FROM
        clients
            JOIN
        sales_clients USING (client_id)
            JOIN
        sales USING (sale_id)
	 WHERE 
		purchase_date BETWEEN DATE_SUB(DATE_SUB(CURDATE(), INTERVAL 1 DAY), INTERVAL 30 DAY) AND DATE_SUB(CURDATE(), INTERVAL 1 DAY)
    GROUP BY client_id
    ORDER BY number_of_purchases DESC);
    
CREATE VIEW clients_number_of_purchases60D AS
    (SELECT 
        client_id, full_name, COUNT(sale_id) AS number_of_purchases
    FROM
        clients
            JOIN
        sales_clients USING (client_id)
            JOIN
        sales USING (sale_id)
	 WHERE 
		purchase_date BETWEEN DATE_SUB(DATE_SUB(CURDATE(), INTERVAL 1 DAY), INTERVAL 60 DAY) AND DATE_SUB(CURDATE(), INTERVAL 1 DAY)
    GROUP BY client_id
    ORDER BY number_of_purchases DESC);
    
    CREATE VIEW clients_number_of_purchases90D AS
    (SELECT 
        client_id, full_name, COUNT(sale_id) AS number_of_purchases
    FROM
        clients
            JOIN
        sales_clients USING (client_id)
            JOIN
        sales USING (sale_id)
	 WHERE 
		purchase_date BETWEEN DATE_SUB(DATE_SUB(CURDATE(), INTERVAL 1 DAY), INTERVAL 90 DAY) AND DATE_SUB(CURDATE(), INTERVAL 1 DAY)
    GROUP BY client_id
    ORDER BY number_of_purchases DESC);
        
CREATE VIEW previous_day_products_sales AS
	(SELECT 
		*
	FROM
		sales_products_and_clients
	WHERE
		 purchase_date = DATE_SUB(CURDATE(), INTERVAL 1 DAY)
	GROUP BY prod_id);
    
CREATE VIEW week_products_sales AS
	(SELECT 
		*
	FROM
		sales_products_and_clients
	WHERE
		purchase_date BETWEEN DATE_SUB(CURDATE(), INTERVAL 1 WEEK) AND DATE_SUB(CURDATE(), INTERVAL 1 DAY)
	GROUP BY prod_id);