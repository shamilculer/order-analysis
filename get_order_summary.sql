CREATE OR REPLACE FUNCTION get_order_summary(customer_id INT)
RETURNS TABLE (
    customer_name VARCHAR,
    total_orders INT,
    total_amount_spent DECIMAL
) AS $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM Customers c WHERE c.customer_id = get_order_summary.customer_id) THEN
        RAISE EXCEPTION 'Customer ID % does not exist', customer_id;
    END IF;

    RETURN QUERY
    SELECT 
        c.customer_name,
        COUNT(o.order_id)::INT AS total_orders,
        COALESCE(SUM(o.total_amount), 0) AS total_amount_spent
    FROM 
        Customers c
    LEFT JOIN 
        Orders o ON c.customer_id = o.customer_id
    WHERE 
        c.customer_id = get_order_summary.customer_id
    GROUP BY 
        c.customer_name;
END;
$$ LANGUAGE plpgsql;
