
    
    

with child as (
    select host_id as from_field
    from AIRBNB.DEV.dim_listings_cleansing
    where host_id is not null
),

parent as (
    select host_id as to_field
    from AIRBNB.DEV.dim_hosts_cleansing
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


