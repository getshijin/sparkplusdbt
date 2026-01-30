with src_tags as (
    select
        *
    from {{ ref('source_genome_tags') }}
)

select 
    tagid,
    INITCAP(TRIM(tag)) as   tag_name
    from src_tags