SELECT * FROM
    {{ ref('dim_listings_cleansing')}} l
INNER JOIN {{ ref('fct_reviews') }} r
USING (listing_id)
WHERE l.created_at >= r.review_date