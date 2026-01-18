with raw_ratings as (
    select
    * from {{ source('raw_lake', 'raw_ratings') }}
)
select
    userid,
    movieid,
    rating,
    timestamp
    from raw_ratings