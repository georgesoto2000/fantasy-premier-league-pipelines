-- models/season_2022.sql
WITH season_2022 AS (
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
    Penalty_Attempts - Penalties AS PENALTIES_MISSED,
    YELLOW_CARDS,
    RED_CARDS,
    xG,
    xA,
    C.OWN_GOALS,
    C.GOALS_CONCEDED,
    C.CLEAN_SHEETS,
    C.SAVES,
    C.POINTS,
    D.POINTS AS NEXT_SEASON_POINTS
  FROM {{ source('fbref_historic', '2022') }} A 
  LEFT JOIN {{ source('static_tables', 'historic_pl_tables') }} B 
    ON A.TEAM = B.TEAM AND B.SEASON_END_YEAR = 2023
  LEFT JOIN {{ source('fpl_historic', '2022') }} C 
    ON C.NAME LIKE CONCAT("%", A.NAME, "%") OR A.NAME LIKE CONCAT("%", C.NAME, "%")
  LEFT JOIN {{ source('fpl_historic', '2023') }} D 
    ON D.NAME LIKE CONCAT("%", A.NAME, "%") OR A.NAME LIKE CONCAT("%", D.NAME, "%")
)
SELECT * FROM season_2022;