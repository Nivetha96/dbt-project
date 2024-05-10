select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
SELECT * FROM AIRBNB.DEV.dim_listings_cleansing
WHERE minimum_nights < 1
    
      
    ) dbt_internal_test