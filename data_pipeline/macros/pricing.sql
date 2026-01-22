


{% macro discounted_amount(extented_price, discounted_price, scale=2) %}
    ( -1 * {{ extented_price }}  * {{ discounted_price }})::decimal(16, {{ scale }})
{% endmacro %}