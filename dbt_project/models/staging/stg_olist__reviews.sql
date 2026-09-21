WITH source as (
    SELECT * FROM {{ source('olist', 'olist_order_reviews_dataset')}}
),

renamed as (
    select
        -- ids
        review_id,
        order_id,
        
        -- attributes
        review_comment_title    as review_title,
        review_comment_message  as review_message,
        review_score,

        -- timestamps
        review_creation_date    as review_creation_at,        
        review_answer_timestamp      as review_answer_at

    from source

)

SELECT * FROM renamed