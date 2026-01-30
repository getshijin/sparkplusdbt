with src_scores as (
    select
        *
    from {{ ref('source_genome_scores') }}
)

select 
    movieid,
    tagid,
    round(relevance, 2) as relevance_score
    from src_scores
    where relevance is not null and relevance > 0