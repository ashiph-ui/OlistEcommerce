WITH source as (
    SELECT * FROM {{ source('olist', 'olist_customers_dataset')}}
),

renamed as (
    select
        -- ids
        customer_id,
        customer_unique_id,

        -- attributes
        customer_zip_code_prefix    as customer_zip,
        customer_city,
        customer_state
    
    from source
)

SELECT * FROM renamed