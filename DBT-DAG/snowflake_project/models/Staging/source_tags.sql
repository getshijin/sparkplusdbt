
{{config(
    materialized='view',on_schema_change='append_new_columns'
)}}
with raw_tags as (
    select
    * from {{ source('raw_lake', 'raw_tags') }}
)
select 
    userid,
    movieid,
    tag,
     to_timestamp_ltz(timestamp) as timestamp
    from raw_tags