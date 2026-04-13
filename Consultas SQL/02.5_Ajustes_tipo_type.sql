ALTER TABLE ec_order_payments_dataset
ALTER COLUMN payment_sequential TYPE INTEGER 
USING payment_sequential::INTEGER

ALTER TABLE ec_order_payments_dataset
ALTER COLUMN payment_installments TYPE INTEGER 
USING payment_installments::INTEGER

ALTER TABLE ec_order_payments_dataset
ALTER COLUMN payment_value TYPE NUMERIC(10,2)
USING payment_value::NUMERIC(10,2)

ALTER TABLE ec_sellers_dataset
ALTER COLUMN seller_id TYPE VARCHAR(32)
USING seller_id::VARCHAR(32)


