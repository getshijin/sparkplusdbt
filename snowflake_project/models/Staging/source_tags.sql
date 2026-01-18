with raw_tags as (
    select
    * from {{ source('raw_lake', 'raw_tags') }}
)
select 
    userid,
    movieid,
    tag,
    timestamp
    from raw_tags