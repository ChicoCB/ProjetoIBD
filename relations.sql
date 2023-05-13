insert into products values (1,'Electronics','Smartphone','Samsung Galaxy S21', 171.0, 7.6, 15.2, 0.8, false, 3, null, null, null, 'https://www.samsung.com/global/galaxy/galaxy-s21-5g/');
insert into products values (2,'Home','Kitchen Appliances','Instant Pot', 550.0, 30.5, 35.5, 31.8, false, 2, null, null, null, 'https://instantpot.com/products/instant-pot-duo-nova-7-in-1-pressure-cooker-6-quart/');
insert into products values (3,'Clothing','Men','Levi Strauss & Co. 501 Original Fit Jeans', 800.0, 50.0, 75.0, 2.5, false, 5, null, null, null, 'https://www.levi.com/US/en_US/clothing/men/jeans/501-original-fit-jeans/p/005010020');
insert into products values (4,'Food','Snacks','Lays Classic Potato Chips', 28.0, 19.0, 26.0, 5.5, false, 10, null, null, null, 'https://www.lays.com/products/lays-classic-potato-chips');
insert into products values (5,'Sports','Fitness','Yoga Mat', 1200.0, 61.0, 183.0, 0.6, false, 2, null, null, null, 'https://www.amazon.com/AmazonBasics-Extra-Thick-Exercise-Carrying/dp/B0716C7GXQ/');
insert into products values (6,'Beauty','Skin Care','CeraVe Moisturizing Cream', 539.0, 8.9, 8.9, 8.9, false, 3, null, null, null, 'https://www.cerave.com/skincare/moisturizers/moisturizing-cream');
insert into products values (7,'Home','Furniture','Ikea Billy Bookcase', 3000.0, 80.0, 28.0, 106.0, false, 2, null, null, null, 'https://www.ikea.com/us/en/p/billy-bookcase-white-40263848/');
insert into products values (8,'Toys','Lego','LEGO Star Wars Millennium Falcon', 4500.0, 33.0, 48.0, 14.0, true, 5, null, null, null, 'https://www.lego.com/en-us/product/millennium-falcon-75257');
insert into products values (9,'Electronics','Headphones','Bose QuietComfort 35 II Wireless Headphones', 235.0, 17.0, 18.0, 8.1, true, 3, null, null, null, 'https://www.bose.com/en_us/products/headphones/over_ear_headphones/quietcomfort-35-wireless-ii.html');
insert into products values (10,'Home','Bedding','Brooklinen Luxe Core Sheet Set', 2400.0, 90.0, 102.0, 1.0, false, 5, null, null, null, 'https://www.brooklinen.com/products/luxe-core-sheet-set');

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

insert into clients values (1, 'John Doe', 'John', 'Doe', 32, '1990-01-15', '12345678901', null, 'john.doe@example.com', '+1 (555) 555-1234', 'Visa', '1234 5678 9012 3456', '12/23', '123');
insert into clients values (2, 'Jane Smith', 'Jane', 'Smith', 25, '1998-06-02', '23456789012', null, 'jane.smith@example.com', '+1 (555) 555-5678', 'Mastercard', '2345 6789 0123 4567', '03/24', '456');
insert into clients values (3, 'Bob Johnson', 'Bob', 'Johnson', 40, '1983-09-20', '34567890123', null, 'bob.johnson@example.com', '+1 (555) 555-9012', 'American Express', '3456 789012 34567', '06/25', '789');
insert into clients values (4, 'Alice Lee', 'Alice', 'Lee', 19, '2004-03-10', '45678901234', null, 'alice.lee@example.com', '+1 (555) 555-3456', 'Visa', '4567 8901 2345 6789', '09/26', '012');
insert into clients values (5, 'Tom Jackson', 'Tom', 'Jackson', 55, '1968-12-25', '56789012345', null, 'tom.jackson@example.com', '+1 (555) 555-6789', 'Mastercard', '5678 9012 3456 7890', '12/27', '345');

insert into client_adresses values (1, 1, 'USA', 'New York', 'New York City', '10001', 'Broadway', '123', true);
insert into client_adresses values (2, 1, 'USA', 'New York', 'Brooklyn', '11201', 'Bedford Ave', '456', false);
insert into client_adresses values (3, 2, 'USA', 'California', 'Los Angeles', '90001', 'Hollywood Blvd', '789', true);
insert into client_adresses values (4, 3, 'USA', 'Texas', 'Austin', '78701', 'Congress Ave', '1011', true);
insert into client_adresses values (5, 4, 'Brazil', 'São Paulo', 'São Paulo', '01234-567', 'Avenida Paulista', '1234', true);
insert into client_adresses values (6, 5, 'Canada', 'Quebec', 'Montreal', 'H2Y 1T2', 'Rue Sainte-Catherine', '567', true);

insert into sales values (1, 1, 'Credit Card', 1, '2023-05-10', '12am - 5pm', null, '2023-05-15', 'Processing');
insert into sales values (2, 2, 'PayPal', 3, '2023-05-10', '8am - 12am', null, '2023-05-15', 'Processing');
insert into sales values (3, 3, 'Credit Card', 4, '2023-05-11', '5pm - 9pm', null, '2023-05-16', 'Processing');
insert into sales values (4, 4, 'Credit Card', 5, '2023-05-12', '9pm - 12pm', null, '2023-05-17', 'Processing');
insert into sales values (5, 5, 'PayPal', 6, '2023-05-12', '8am - 12am', null, '2023-05-17', 'Processing');
insert into sales values (6, 2, 'Credit Card', 3, '2023-05-13', '12am - 5pm', null, '2023-05-18', 'Processing');
insert into sales values (7, 1, 'PayPal', 1, '2023-05-13', '8am - 12am', null, '2023-05-18', 'Processing');
insert into sales values (8, 1, 'Credit Card', 2, '2023-05-14', '5pm - 9pm', null, '2023-05-19', 'Processing');
insert into sales values (9, 3, 'Credit Card', 2, '2023-05-15', '9pm - 12pm', null, '2023-05-20', 'Processing');
insert into sales values (10, 4, 'PayPal', 3, '2023-05-15', '8am - 12am', null, '2023-05-20', 'Processing');


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


