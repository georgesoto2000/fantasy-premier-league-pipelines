SELECT 
    A.NAME,
    AGE,
    POSITION,
    TEAM,
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
    B.POINTS AS NEXT_SEASON_POINTS
FROM {{ ref('FBREF_FPL') }} A 
LEFT JOIN (SELECT * FROM {{ ref('FPL_ALL_SEASONS') }}) B
    ON (B.NAME LIKE CONCAT("%", A.NAME, "%") 
        OR A.NAME LIKE CONCAT("%", B.NAME, "%")) 
        AND (A.SEASON_START = B.SEASON_START + 1)