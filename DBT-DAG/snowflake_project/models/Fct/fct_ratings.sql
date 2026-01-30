{{ config(
    materialized='incremental',
    on_schema_change='fail'
)
}}
with raw_ratings as (
    select
    * from {{ ref('source_ratings') }}
)

select
    userid,
    movieid,
    rating,
    timestamp
from raw_ratings
where rating is not null
{% if is_incremental() %}
    and timestamp > (select max(timestamp) from {{ this }})
{% endif %}