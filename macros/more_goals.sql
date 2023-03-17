{% macro test_more_goals(model, column_name) %}

with validation as(
    select
        {{ column_name }} as more_goals
        assist
    from {{ model }}
),

validation_errors as(
    select
        more_goals
    from validation
    where more_goals > 2
        and assist = 3

)

select count(*)
from validation_errors

{% endmacro %}