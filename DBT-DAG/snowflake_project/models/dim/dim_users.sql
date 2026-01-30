

with ratings as (

    select
        distinct userId
    from {{ ref('source_ratings') }}
    ),
tags as (

    select
        distinct userId
    from {{ ref('source_tags') }} as tgt
)
select 
    distinct userId 
    from (SELECT * FROM ratings
    UNION 
    select * from tags) 