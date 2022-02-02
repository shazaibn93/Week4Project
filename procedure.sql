CREATE OR REPLACE PROCEDURE tire_sale (
    p_name VARCHAR, 
    discount_price DECIMAL
    )

AS
$$
BEGIN
    UPDATE parts
    SET price = price - discount_price
    WHERE part_name = p_name;
END
$$
LANGUAGE plpgsql;

CALL tire_sale('Tires',250.00)