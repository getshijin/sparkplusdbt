with raw_links as (
    select
    * from {{ source('raw_lake', 'raw_links') }}
)   
select
    movieid,
    imdbid,
    tmdbid
    from raw_links