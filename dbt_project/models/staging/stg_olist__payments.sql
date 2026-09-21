WITH source as (
    SELECT * FROM {{source('olist', 'olist_order_payments_dataset')}}
),

renamed as (
    select
        -- ids
        order_id,

        -- attributes
        payment_sequential,
        payment_type,
        payment_installments,
        payment_value

    from source
)

SELECT * FROM renamed