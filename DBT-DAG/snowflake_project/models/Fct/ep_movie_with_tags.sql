with movie_with_tags as (
    select
        *
    from {{ ref('dim_movies_with_tag') }}
)

select * from movie_with_tags