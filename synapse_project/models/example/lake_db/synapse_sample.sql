with source_store_trans as (

    select *
    from {{ source('lake_db', 'ext_transactions') }}

)

final as (
    select *
    from source_store_trans
)

select *
from final