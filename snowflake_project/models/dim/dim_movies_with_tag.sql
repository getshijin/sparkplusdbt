{{config(
    materialized='ephemeral')}}
with src_movies as (
    select
        *
    from {{ ref('source_movie') }}
),
tags as (
    select
        *
    from {{ ref('dim_genome_tags') }}
)

,
scource as (
    select * from {{ ref('fct_genome_scores') }}
)

select 
    m.movieid,
    m.title,
    m.genres,
    t.tag_name,
    s.relevance_score
    from src_movies m
    left join scource s on m.movieid = s.movieid
    left join tags t on s.tagid = t.tagid