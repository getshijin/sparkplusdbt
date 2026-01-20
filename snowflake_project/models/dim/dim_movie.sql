with src_movies as (
    select
        *
    from {{ ref('source_movie') }}
)

select 
    movieid,
    INITCAP (TRIM(title)) as movie_title,
    split (genres, '|') as genre_array,
    genres
    from src_movies