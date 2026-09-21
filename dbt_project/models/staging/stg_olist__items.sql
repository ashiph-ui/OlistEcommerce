WITH source AS (
    SELECT * FROM {{ source('olist', 'olist_order_items_dataset')}}
),

renamed as (
    select

        -- ids
        order_id,
        order_item_id,
        product_id,
        seller_id,

        -- attributes
        price,
        freight_value,

        --timestamps
        shipping_limit_date     as shipping_limit_at

    from source
)

SELECT * FROM renamed