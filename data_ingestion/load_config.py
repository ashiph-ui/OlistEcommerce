TABLE_CONFIG = {
    "olist_customers_dataset": {
        "dtype": {"customer_zip_code_prefix": "string"},
    },
    "olist_sellers_dataset": {
        "dtype": {"seller_zip_code_prefix": "string"},
    },
    "olist_geolocation_dataset": {
        "dtype": {"geolocation_zip_code_prefix": "string"},
    },
    "olist_products_dataset": {
        "dtype": {
            "product_name_lenght": "Int64",
            "product_description_lenght": "Int64",
            "product_photos_qty": "Int64",
            "product_weight_g": "Int64",
            "product_length_cm": "Int64",
            "product_height_cm": "Int64",
            "product_width_cm": "Int64",
        },
    },
    "olist_orders_dataset": {
        "parse_dates": [
            "order_purchase_timestamp",
            "order_approved_at",
            "order_delivered_carrier_date",
            "order_delivered_customer_date",
            "order_estimated_delivery_date",
        ],
    },
    "olist_order_items_dataset": {
        "parse_dates": ["shipping_limit_date"],
    },
    "olist_order_reviews_dataset": {
        "parse_dates": ["review_creation_date", "review_answer_timestamp"],
    },

}
