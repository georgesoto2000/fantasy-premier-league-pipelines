SELECT 
    A.NAME,
    AGE,
    CAST(B.RK AS INT64) AS TEAM_RANK,
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
    A.SEASON_START,
    POINTS,
    NEXT_SEASON_POINTS
FROM {{ ref('3_FBREF_FPL_NEXT_SEASON_POINTS') }} A
LEFT JOIN (SELECT * FROM {{ source('static_tables', 'historic_pl_tables') }}) B
    ON (A.SEASON_START + 1) = B.SEASON_END_YEAR
        AND A.TEAM = B.TEAM