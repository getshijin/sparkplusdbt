{% snapshot snap_tags %}

    {{ config(
        target_schema='SNAPSHOTS',
        unique_key=['userid','movieid'],
        strategy='timestamp',
        updated_at='updated_at',
        invalidate_hard_deletes=True
    ) }}

    select 
    {{ dbt_utils.generate_surrogate_key(['userid','movieid']) }} as id, 
    userid,
    movieid,
    cast(current_timestamp() as timestamp) as updated_at
    from {{ ref('fct_ratings') }}
    limit 100
{% endsnapshot %}