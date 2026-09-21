WITH source as (
    SELECT * FROM {{ source("olist", "olist_sellers_dataset")}}
    ),

renamed as (
    select
        -- ids
        seller_id,
        seller_zip_code_prefix as seller_zip,
        seller_city,
        seller_state

    from source
)

SELECT * FROM renamed
