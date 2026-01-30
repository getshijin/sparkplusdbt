
{{config(
    materialized='view',on_schema_change='append_new_columns'
)}}


with source_genome_scores as (
    select
    * from {{ source('raw_lake', 'raw_genome_scores') }}
)
select 
    movieid,
    tagid,
    relevance
    from source_genome_scores