{{config(
    materialized='table'
)}}

with fct_ratings as (
    select
        *
    from {{ ref('source_ratings') }}
),seed_movies as (
    select
        *
    from {{ ref('seed_file') }}
)

select 
f.*,
case 
    when s.movieid is not null then 'Y'
    else 'N'
end as is_released
from fct_ratings f left join seed_file s on f.movieid = s.movieid