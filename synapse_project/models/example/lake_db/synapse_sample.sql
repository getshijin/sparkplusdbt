with source_store_trans as (

    select *
    from {{ source('lake_db', 'customers') }}

),

final_1 as (
    select *
    from source_store_trans
)

select *
from final_1