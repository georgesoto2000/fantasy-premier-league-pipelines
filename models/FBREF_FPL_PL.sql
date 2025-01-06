SELECT 
    A.NAME,
    AGE,
    B.RK AS TEAM_RANK,
    POSITION,
    MATCHES_PLAYED,
    STARTS,
    MINUTES,
    GOALS,
    ASSISTS,
    PENALTIES,
    PENALTIES_MISSED,
    YELLOW_CARDS,
    RED_CARDS,
    xG,
    xA,
    OWN_GOALS,
    GOALS_CONCEDED,
    CLEAN_SHEETS,
    SAVES,
    POINTS,
    NEXT_SEASON_POINTS
FROM {{ ref('FBREF_FPL_NEXT_SEASON_POINTS') }} A
LEFT JOIN (SELECT * FROM {{ source('static_tables', 'historic_pl_tables') }}) B
    ON (A.SEASON_START + 1) = B.SEASON_END_YEAR
        AND A.TEAM = B.TEAM