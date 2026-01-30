{{config(
    materialized='view',on_schema_change='append_new_columns'
)}}

with raw_links as (
    select
    * from {{ source('raw_lake', 'raw_links') }}
)   
select
    movieid,
    imdbid,
    tmdbid
    from raw_links