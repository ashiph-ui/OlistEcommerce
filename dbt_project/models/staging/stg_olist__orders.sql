WITH source AS (
    SELECT * FROM {{ source('olist', 'olist_orders_dataset')}}
),

renamed as (

    select
        -- ids
        order_id,
        customer_id,

        -- attributes
        order_status,

        -- timestamps
        order_purchase_timestamp          as purchased_at,
        order_approved_at                 as approved_at,
        order_delivered_carrier_date      as delivered_to_carrier_at,
        order_delivered_customer_date     as delivered_to_customer_at,
        order_estimated_delivery_date     as estimated_delivery_at

    from source

)

select * from renamed