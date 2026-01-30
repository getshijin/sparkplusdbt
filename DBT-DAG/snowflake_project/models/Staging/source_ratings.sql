{{config(
    materialized='table'
)}}

with raw_ratings as (
    select
    * from {{ source('raw_lake', 'raw_ratings') }}
)
select
    userid,
    movieid,
    rating,
    to_timestamp_ltz(timestamp) as timestamp
    from raw_ratings