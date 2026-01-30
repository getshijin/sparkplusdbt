

select 
    order_key,
    sum(item_discounted_amount) as item_discounted_amount,
    sum(extended_price) as gross_item_sales_amount

    from 
        {{ ref('int_order_items') }}
    group by
        order_key
    order by
        order_key