with raw_genome_tags as (
    select
    * from {{ source('raw_lake', 'raw_genome_tags') }}
)
select 
    tagid,
    tag
    from raw_genome_tags