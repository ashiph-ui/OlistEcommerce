WITH source AS (
    SELECT * FROM {{ source( "olist", "olist_geolocation_dataset")}}

),

renamed as (
    select
        geolocation_zip_code_prefix as geolocation_zip,
        geolocation_lat,
        geolocation_lng,
        geolocation_city,
        geolocation_state
    
    from source
)

SELECT * FROM renamed