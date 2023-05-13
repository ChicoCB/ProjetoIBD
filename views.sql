DROP VIEW IF EXISTS clients_per_city;
DROP VIEW IF EXISTS clients_per_state;
DROP VIEW IF EXISTS clients_per_country;
DROP VIEW IF EXISTS sales_per_city;
DROP VIEW IF EXISTS sales_per_state;
DROP VIEW IF EXISTS sales_per_country;

#clients_per_city
CREATE VIEW clients_per_city AS
    (SELECT 
        city, COUNT(client_id) AS number_of_clients
    FROM
        clients
            JOIN
        client_adresses USING (client_id)
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
        client_adresses USING (client_id)
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
        client_adresses USING (client_id)
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
        clients USING (client_id)
            JOIN
        client_adresses USING (client_id)
    GROUP BY city
    ORDER BY number_of_sales DESC);

#sales_per_state
CREATE VIEW sales_per_state AS
    (SELECT 
        state, COUNT(sale_id) AS number_of_sales
    FROM
        sales
            JOIN
        clients USING (client_id)
            JOIN
        client_adresses USING (client_id)
    GROUP BY state
    ORDER BY number_of_sales DESC);

#sales_per_country
CREATE VIEW sales_per_country AS
    (SELECT 
        country, COUNT(sale_id) AS number_of_sales
    FROM
        sales
            JOIN
        clients USING (client_id)
            JOIN
        client_adresses USING (client_id)
    GROUP BY country
    ORDER BY number_of_sales DESC);