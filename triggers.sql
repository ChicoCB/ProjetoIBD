CREATE TRIGGER update_product_stock_quantity
AFTER INSERT ON sales_products
FOR EACH ROW
    UPDATE products
    SET stock_quantity = stock_quantity - NEW.prod_quantity
    WHERE prod_id = NEW.prod_id;