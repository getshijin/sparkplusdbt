with src_score as 
(
    select
        *
    from {{ ref('source_genome_score') }}
)

select 
orderid,tagid,relevance_score     
from src_score
where relevance_score > 3