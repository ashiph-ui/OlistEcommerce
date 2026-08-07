CREATE TABLE raw.OLIST_CUSTOMERS (
    customer_id text PRIMARY KEY,
    customer_unique_id text,
    customer_zip_code_prefix varchar(5),
    customer_city text,
    customer_state char(2)
);

CREATE TABLE raw.OLIST_GEOLOCATION (
    geolocation_zip_code_prefix varchar(5),
    geolocation_lat numeric(8, 6),
    geolocation_lng numeric(9, 6),
    geolocation_city text,
    geolocation_state char(2)
);

CREATE TABLE raw.OLIST_ORDERS ( 
    order_id text PRIMARY KEY,
    customer_id text ,
    order_status varchar(14),
    order_purchase_timestamp timestamp,
    order_approved_at timestamp,
    order_delivered_carrier_date timestamp,
    order_delivered_customer_date timestamp,
    order_estimated_delivery_date timestamp
);