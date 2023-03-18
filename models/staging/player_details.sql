with player_metrics as (
    select * from {{ ref('player_metrics') }}
),

final as(
    select * from player_metrics
)

select * from final