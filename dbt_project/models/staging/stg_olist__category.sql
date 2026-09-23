WITH source as(
    SELECT * FROM {{ source("olist", "product_category_name_translation")}}
),

renamed as (
    select
        product_category_name           as product_category,
        product_category_name_english   as product_category_english
    
    from source
)

SELECT * FROM renamed
