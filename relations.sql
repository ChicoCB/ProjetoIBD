INSERT INTO products (prod_id, prod_type, prod_subtype, prod_description, stock_quantity, weight, package_size_width, package_size_length, package_size_height, is_fragile, max_package_stack, external_link)
VALUES
    (1, 'Construction Material', 'Concrete', 'Bag of Portland Cement', 1000, 50, 30, 30, 60, false, 5, 'https://example.com/portland-cement'),
    (2, 'Construction Material', 'Lumber', '2x4x8 Lumber', 500, 2000, 5, 10, 244, false, 10, 'https://example.com/2x4-lumber'),
    (3, 'Construction Material', 'Drywall', 'Sheet of Drywall', 200, 5000, 122, 244, 1.2, true, 8, 'https://example.com/drywall-sheet'),
    (4, 'Construction Material', 'Roofing', 'Bundle of Asphalt Shingles', 300, 2500, 30, 91.4, 15.2, false, 3, 'https://example.com/asphalt-shingles'),
    (5, 'Construction Material', 'Insulation', 'Roll of Fiberglass Insulation', 150, 1000, 61, 121.9, 15.2, false, 4, 'https://example.com/fiberglass-insulation');

INSERT INTO products (prod_id, prod_type, prod_subtype, prod_description, stock_quantity, weight, package_size_width, package_size_length, package_size_height, is_fragile, max_package_stack, external_link)
VALUES
    (6, 'Construction Material', 'Brick', 'Red Clay Brick', 800, 2500, 7.5, 22.5, 11.3, false, 10, 'https://example.com/red-brick'),
    (7, 'Construction Material', 'Tile', 'Ceramic Floor Tile', 600, 1000, 30, 30, 1.2, true, 5, 'https://example.com/ceramic-tile'),
    (8, 'Construction Material', 'Rebar', 'Steel Reinforcing Bar', 400, 5000, 1.2, 6, 1.2, false, 20, 'https://example.com/rebar'),
    (9, 'Construction Material', 'Plywood', '4x8 Plywood Sheet', 350, 20000, 122, 244, 1.2, false, 6, 'https://example.com/plywood-sheet'),
    (10, 'Construction Material', 'Plaster', 'Bag of Plaster of Paris', 900, 1000, 15, 30, 8.5, true, 8, 'https://example.com/plaster-of-paris');

insert into clients values (1, 'John Doe', 'John', 'Doe', 32, '1990-01-15', '12345678901', null, 'john.doe@example.com', '+1 (555) 555-1234', 'Visa', '1234 5678 9012 3456', '12/23', '123');
insert into clients values (2, 'Jane Smith', 'Jane', 'Smith', 25, '1998-06-02', '23456789012', null, 'jane.smith@example.com', '+1 (555) 555-5678', 'Mastercard', '2345 6789 0123 4567', '03/24', '456');
insert into clients values (3, 'Bob Johnson', 'Bob', 'Johnson', 40, '1983-09-20', '34567890123', null, 'bob.johnson@example.com', '+1 (555) 555-9012', 'American Express', '3456 789012 34567', '06/25', '789');
insert into clients values (4, 'Alice Lee', 'Alice', 'Lee', 19, '2004-03-10', '45678901234', null, 'alice.lee@example.com', '+1 (555) 555-3456', 'Visa', '4567 8901 2345 6789', '09/26', '012');
insert into clients values (5, 'Tom Jackson', 'Tom', 'Jackson', 55, '1968-12-25', '56789012345', null, 'tom.jackson@example.com', '+1 (555) 555-6789', 'Mastercard', '5678 9012 3456 7890', '12/27', '345');

insert into adresses values (1, 'USA', 'New York', 'New York City', '10001', 'Broadway', '123', true);
insert into adresses values (2, 'USA', 'New York', 'Brooklyn', '11201', 'Bedford Ave', '456', false);
insert into adresses values (3, 'USA', 'California', 'Los Angeles', '90001', 'Hollywood Blvd', '789', true);
insert into adresses values (4, 'USA', 'Texas', 'Austin', '78701', 'Congress Ave', '1011', true);
insert into adresses values (5, 'Brazil', 'São Paulo', 'São Paulo', '01234-567', 'Avenida Paulista', '1234', true);
insert into adresses values (6, 'Canada', 'Quebec', 'Montreal', 'H2Y 1T2', 'Rue Sainte-Catherine', '567', true);

insert into sales values (1, 'Credit Card', '2023-05-10', '12am - 5pm', null, '2023-05-15', 'Processing');
insert into sales values (2, 'PayPal', '2023-05-10', '8am - 12am', null, '2023-05-15', 'Processing');
insert into sales values (3, 'Credit Card', '2023-05-11', '5pm - 9pm', null, '2023-05-16', 'Processing');
insert into sales values (4, 'Credit Card', '2023-05-12', '9pm - 12pm', null, '2023-05-17', 'Processing');
insert into sales values (5, 'PayPal', '2023-05-12', '8am - 12am', null, '2023-05-17', 'Processing');
insert into sales values (6, 'Credit Card', '2023-05-13', '12am - 5pm', null, '2023-05-18', 'Processing');
insert into sales values (7, 'PayPal', '2023-05-13', '8am - 12am', null, '2023-05-18', 'Processing');
insert into sales values (8, 'Credit Card', '2023-05-14', '5pm - 9pm', null, '2023-05-19', 'Processing');
insert into sales values (9, 'Credit Card', '2023-05-15', '9pm - 12pm', null, '2023-05-20', 'Processing');
insert into sales values (10, 'PayPal', '2023-05-15', '8am - 12am', null, '2023-05-20', 'Processing');

insert into product_prices values (1, '$799.99', '2022-01-01', '2022-02-01');
insert into product_prices values (1, '$699.99', '2022-02-02', '2022-03-01');
insert into product_prices values (2, '$129.99', '2022-05-01', '2022-06-01');
insert into product_prices values (2, '$99.99', '2022-06-02', '2022-07-01');
insert into product_prices values (3, '$69.99', '2022-04-01', '2022-05-01');
insert into product_prices values (3, '$59.99', '2022-05-02', '2022-06-01');
insert into product_prices values (4, '$3.99', '2022-03-01', '2022-04-01');
insert into product_prices values (4, '$2.99', '2022-04-02', '2022-05-01');
insert into product_prices values (5, '$24.99', '2022-02-01', '2022-03-01');
insert into product_prices values (5, '$19.99', '2022-03-02', '2022-04-01');
insert into product_prices values (6, '$18.99', '2022-04-01', '2022-05-01');
insert into product_prices values (6, '$14.99', '2022-05-02', '2022-06-01');
insert into product_prices values (7, '$79.99', '2022-03-01', '2022-04-01');
insert into product_prices values (7, '$69.99', '2022-04-02', '2022-05-01');
insert into product_prices values (8, '$249.99', '2022-02-01', '2022-03-01');
insert into product_prices values (8, '$199.99', '2022-03-02', '2022-04-01');
insert into product_prices values (9, '$329.99', '2022-01-01', '2022-02-01');
insert into product_prices values (9, '$299.99', '2022-02-02', '2022-03-01');
insert into product_prices values (10, '$169.99', '2022-05-01', '2022-06-01');
insert into product_prices values (10, '$149.99', '2022-06-02', '2022-07-01');
insert into product_prices values (1, '$599.99', '2022-03-02', '9999-12-31');
insert into product_prices values (2, '$89.99', '2022-07-02', '9999-12-31');
insert into product_prices values (3, '$49.99', '2022-06-02', '9999-12-31');
insert into product_prices values (4, '$1.99', '2022-05-02', '9999-12-31');
insert into product_prices values (5, '$14.99', '2022-04-02', '9999-12-31');
insert into product_prices values (6, '$12.99', '2022-06-02', '9999-12-31');
insert into product_prices values (7, '$59.99', '2022-05-02', '9999-12-31');
insert into product_prices values (8, '$179.99', '2022-04-02', '9999-12-31');
insert into product_prices values (9, '$279.99', '2022-03-02', '9999-12-31');
insert into product_prices values (10, '$129.99', '2022-07-02', '9999-12-31');

insert into clients_adresses values (1, 1);
insert into clients_adresses values (1, 2);
insert into clients_adresses values (2, 3);
insert into clients_adresses values (3, 4);
insert into clients_adresses values (4, 5);
insert into clients_adresses values (5, 6);

insert into sales_adresses values ('1','1');
insert into sales_adresses values ('2','1');
insert into sales_adresses values ('3','2');
insert into sales_adresses values ('4','2');
insert into sales_adresses values ('5','3');
insert into sales_adresses values ('6','4');
insert into sales_adresses values ('7','5');
insert into sales_adresses values ('8','6');
insert into sales_adresses values ('9','6');
insert into sales_adresses values ('10','3');

insert into sales_clients values ('1','1');
insert into sales_clients values ('2','2');
insert into sales_clients values ('3','3');
insert into sales_clients values ('4','4');
insert into sales_clients values ('5','5');
insert into sales_clients values ('6','1');
insert into sales_clients values ('7','1');
insert into sales_clients values ('8','2');
insert into sales_clients values ('9','3');
insert into sales_clients values ('10','4');

insert into sales_products values (1, 1, 2, 0.1);
insert into sales_products values (1, 3, 1, 0);
insert into sales_products values (2, 2, 1, 0.05);
insert into sales_products values (3, 4, 3, 0.15);
insert into sales_products values (3, 5, 2, 0.2);
insert into sales_products values (4, 1, 1, 0);
insert into sales_products values (4, 2, 2, 0.1);
insert into sales_products values (4, 5, 1, 0);
insert into sales_products values (5, 6, 1, 0);
insert into sales_products values (5, 7, 1, 0);
insert into sales_products values (6, 1, 1, 0);
insert into sales_products values (7, 1, 2, 0.1);
insert into sales_products values (7, 4, 1, 0);
insert into sales_products values (8, 6, 1, 0.05);
insert into sales_products values (8, 7, 1, 0);
insert into sales_products values (9, 1, 1, 0);
insert into sales_products values (9, 2, 2, 0.1);
insert into sales_products values (10, 3, 1, 0);
insert into sales_products values (10, 5, 1, 0);
insert into sales_products values (10, 7, 1, 0.05);
