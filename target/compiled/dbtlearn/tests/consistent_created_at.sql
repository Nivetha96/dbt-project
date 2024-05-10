SELECT * FROM
    AIRBNB.DEV.dim_listings_cleansing l
INNER JOIN AIRBNB.DEV.fct_reviews r
USING (listing_id)
WHERE l.created_at >= r.review_date