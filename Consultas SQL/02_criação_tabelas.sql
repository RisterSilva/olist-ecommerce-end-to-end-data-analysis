CREATE TABLE IF NOT EXISTS ec_customers_dataset (
	customer_id VARCHAR(32),
	customer_unique_id VARCHAR(32),
	customer_zip_code_prefix VARCHAR(8),
	customer_city VARCHAR,
	customer_state VARCHAR(2)
);

CREATE TABLE IF NOT EXISTS ec_geolocation_dataset (
	geolocation_zip_code_prefix VARCHAR(8),
	geolocation_lat NUMERIC(10,8),
	geolocation_lng NUMERIC(11,8),
	geolocation_city VARCHAR,
	geolocation_state VARCHAR(2)
);

CREATE TABLE IF NOT EXISTS ec_order_items_dataset (
	order_id VARCHAR(32),
	"order_item_id" INTEGER,
	"product_id" VARCHAR(32),
	"seller_id" VARCHAR(32), 
	"shipping_limit_date" TIMESTAMP,
	"price" NUMERIC(10,2),
	"freight_value" NUMERIC(10,2)
)

CREATE TABLE IF NOT EXISTS ec_order_payments_dataset (
order_id VARCHAR,
"payment_sequential" VARCHAR,
"payment_type" VARCHAR,
"payment_installments" VARCHAR,
"payment_value" VARCHAR
)

CREATE TABLE IF NOT EXISTS ec_order_reviews_dataset (
	review_id VARCHAR(32),
	"order_id" VARCHAR(32),
	"review_score" SMALLINT,
	"review_comment_title" VARCHAR,
	"review_comment_message" TEXT,
	"review_creation_date" TIMESTAMP,
	"review_answer_timestamp" TIMESTAMP						
)

CREATE TABLE IF NOT EXISTS ec_orders_dataset (
	order_id VARCHAR(32),
	"customer_id" VARCHAR(32),
	"order_status" VARCHAR(12),
	"order_purchase_timestamp" TIMESTAMP,
	"order_approved_at" TIMESTAMP,
	"order_delivered_carrier_date" TIMESTAMP,
	"order_delivered_customer_date" TIMESTAMP,
	"order_estimated_delivery_date" TIMESTAMP
)

CREATE TABLE IF NOT EXISTS ec_products_dataset (
	product_id VARCHAR(32),
	"product_category_name" VARCHAR(50),
	"product_name_lenght" INTEGER,
	"product_description_lenght" INTEGER,
	"product_photos_qty" SMALLINT,
	"product_weight_g" INTEGER,
	"product_length_cm" INTEGER,
	"product_height_cm" INTEGER,
	"product_width_cm" INTEGER
)

CREATE TABLE IF NOT EXISTS ec_sellers_dataset (
	seller_id VARCHAR,
	"seller_zip_code_prefix" VARCHAR,
	"seller_city" VARCHAR,
	"seller_state" VARCHAR
)

CREATE TABLE IF NOT EXISTS mkt_closed_deals_dataset (
	mql_id VARCHAR(32),
	seller_id VARCHAR(32),
	sdr_id VARCHAR(32),
	sr_id VARCHAR(32), 
	won_date TIMESTAMP,
	business_segment VARCHAR(50),
	lead_type VARCHAR(50),
	lead_behaviour_profile VARCHAR(20),
	has_company BOOLEAN,
	has_gtin BOOLEAN,
	average_stock VARCHAR,
	business_type VARCHAR(20),
	declared_product_catalog_size NUMERIC,
	declared_monthly_revenue NUMERIC
)

CREATE TABLE IF NOT EXISTS mkt_qualified_leads_dataset (
	mql_id VARCHAR(32),
	first_contact_date DATE,
	landing_page_id VARCHAR(32),
	origin VARCHAR(50)
)


