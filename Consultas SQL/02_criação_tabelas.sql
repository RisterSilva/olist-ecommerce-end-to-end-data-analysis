CREATE TABLE IF NOT EXISTS ec_customers_dataset (
	customer_id VARCHAR,
	customer_unique_id VARCHAR,
	customer_zip_code_prefix VARCHAR,
	customer_city VARCHAR,
	customer_state VARCHAR
)

CREATE TABLE IF NOT EXISTS ec_geolocation_dataset (
	geolocation_zip_code_prefix VARCHAR,
	geolocation_lat VARCHAR,
	geolocation_lng VARCHAR,
	geolocation_city VARCHAR,
	geolocation_state	VARCHAR
)

CREATE TABLE IF NOT EXISTS ec_order_items_dataset (
	order_id VARCHAR,
	"order_item_id" VARCHAR,
	"product_id" VARCHAR,
	"seller_id" VARCHAR, 
	"shipping_limit_date" VARCHAR,
	"price" VARCHAR,
	"freight_value" VARCHAR
)

CREATE TABLE IF NOT EXISTS ec_order_payments_dataset (
order_id VARCHAR,
"payment_sequential" VARCHAR,
"payment_type" VARCHAR,
"payment_installments" VARCHAR,
"payment_value" VARCHAR
)

CREATE TABLE IF NOT EXISTS ec_order_reviews_dataset (
	review_id VARCHAR,
	"order_id" VARCHAR,
	"review_score" VARCHAR,
	"review_comment_title" VARCHAR,
	"review_comment_message" VARCHAR,
	"review_creation_date" VARCHAR,
	"review_answer_timestamp" VARCHAR						
)

CREATE TABLE IF NOT EXISTS ec_orders_dataset (
	order_id VARCHAR,
	"customer_id" VARCHAR,
	"order_status" VARCHAR,
	"order_purchase_timestamp" VARCHAR,
	"order_approved_at" VARCHAR,
	"order_delivered_carrier_date" VARCHAR,
	"order_delivered_customer_date" VARCHAR,
	"order_estimated_delivery_date" VARCHAR
)

CREATE TABLE IF NOT EXISTS ec_products_dataset (
	product_id VARCHAR,
	"product_category_name" VARCHAR,
	"product_name_lenght" VARCHAR,
	"product_description_lenght" VARCHAR,
	"product_photos_qty" VARCHAR,
	"product_weight_g" VARCHAR,
	"product_length_cm" VARCHAR,
	"product_height_cm" VARCHAR,
	"product_width_cm" VARCHAR
)

CREATE TABLE IF NOT EXISTS ec_sellers_dataset (
	seller_id VARCHAR,
	"seller_zip_code_prefix" VARCHAR,
	"seller_city" VARCHAR,
	"seller_state" VARCHAR
)

CREATE TABLE IF NOT EXISTS mkt_closed_deals_dataset (
	mql_id VARCHAR,
	seller_id VARCHAR,
	sdr_id VARCHAR,
	sr_id VARCHAR, 
	won_date VARCHAR,
	business_segment VARCHAR,
	lead_type VARCHAR,
	lead_behaviour_profile VARCHAR,
	has_company VARCHAR,
	has_gtin VARCHAR,
	average_stock VARCHAR,
	business_type VARCHAR,
	declared_product_catalog_size VARCHAR,
	declared_monthly_revenue VARCHAR
)

CREATE TABLE IF NOT EXISTS mkt_qualified_leads_dataset (
	mql_id VARCHAR,
	first_contact_date VARCHAR,
	landing_page_id VARCHAR,
	origin VARCHAR
)


