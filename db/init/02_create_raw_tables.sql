CREATE TABLE IF NOT EXISTS raw.OLIST_CUSTOMERS_DATASET (
    customer_id text,
    customer_unique_id text,
    customer_zip_code_prefix varchar(5),
    customer_city text,
    customer_state char(2)
);

CREATE TABLE IF NOT EXISTS raw.OLIST_GEOLOCATION_DATASET (
    geolocation_zip_code_prefix varchar(5),
    geolocation_lat numeric(9, 6),
    geolocation_lng numeric(9, 6),
    geolocation_city text,
    geolocation_state char(2)
);

CREATE TABLE IF NOT EXISTS raw.OLIST_ORDERS_DATASET (
    order_id text,
    customer_id text,
    order_status varchar(14),
    order_purchase_timestamp timestamp,
    order_approved_at timestamp,
    order_delivered_carrier_date timestamp,
    order_delivered_customer_date timestamp,
    order_estimated_delivery_date timestamp
);

CREATE TABLE IF NOT EXISTS raw.PRODUCT_CATEGORY_NAME_TRANSLATION (
    product_category_name text,
    product_category_name_english text
);

CREATE TABLE IF NOT EXISTS raw.OLIST_SELLERS_DATASET (
    seller_id text,
    seller_zip_code_prefix varchar(5),
    seller_city text,
    seller_state char(2)
);

CREATE TABLE IF NOT EXISTS raw.OLIST_ORDER_ITEMS_DATASET (

    order_id text,
    order_item_id int,         
    product_id text,
    seller_id text,
    shipping_limit_date timestamp,
    price numeric(10, 2),     
    freight_value numeric(10, 2)
);

CREATE TABLE IF NOT EXISTS raw.OLIST_PRODUCTS_DATASET (
    product_id text,
    product_category_name text,
    product_name_lenght int,
    product_description_lenght int, 
    product_photos_qty int,
    product_weight_g int,
    product_length_cm int,
    product_height_cm int,
    product_width_cm int
);

CREATE TABLE IF NOT EXISTS raw.OLIST_ORDER_REVIEWS_DATASET (
    review_id text,
    order_id text,
    review_score int,
    review_comment_title text,
    review_comment_message text,
    review_creation_date timestamp,
    review_answer_timestamp timestamp
);

CREATE TABLE IF NOT EXISTS raw.OLIST_ORDER_PAYMENTS_DATASET (
    order_id text,
    payment_sequential int,
    payment_type varchar(12),
    payment_installments int,
    payment_value numeric(10, 2)      
);
