WITH source as(
    SELECT * FROM {{ source("olist", "product_category_name_translation")}}
),

renamed as (
    select
        product_category_name,
        product_category_name_english
    
    from source
)

SELECT * FROM renamed
