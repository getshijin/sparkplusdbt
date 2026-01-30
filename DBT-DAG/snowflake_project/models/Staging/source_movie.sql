
{{config(
    materialized='view',on_schema_change='append_new_columns'
)}}

with raw_movies as (
    select
    * from {{ source('raw_lake', 'raw_movies') }}
)
select
    movieid ,
    title,
    genres
    from raw_movies
