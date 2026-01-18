with source_genome_scores as (
    select
    * from {{ source('raw_lake', 'raw_genome_scores') }}
)
select 
    movieid,
    tagid,
    relevance
    from source_genome_scores