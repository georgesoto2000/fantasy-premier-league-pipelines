WITH FBREF_SEASON_2016 AS(
  SELECT
    NAME,
    Nationality,
    POSITION,
    TEAM,
    AGE,
    Matches_Played,
    STARTS,
    MINUTES,
    GOALS,
    ASSISTS,
    PENALTIES,
    Penalty_Attempts,
    YELLOW_CARDS,
    Red_Cards,
    xg,
    xA,
    '2016' AS SEASON_START
  FROM {{ source('fbref_historic', '2016') }}),

FBREF_SEASON_2017 AS(
  SELECT
    NAME,
    Nationality,
    POSITION,
    TEAM,
    AGE,
    Matches_Played,
    STARTS,
    MINUTES,
    GOALS,
    ASSISTS,
    PENALTIES,
    Penalty_Attempts,
    YELLOW_CARDS,
    Red_Cards,
    xg,
    xA,
    '2017' AS SEASON_START
  FROM {{ source('fbref_historic', '2017') }}),

FBREF_SEASON_2018 AS(
  SELECT
    NAME,
    Nationality,
    POSITION,
    TEAM,
    AGE,
    Matches_Played,
    STARTS,
    MINUTES,
    GOALS,
    ASSISTS,
    PENALTIES,
    Penalty_Attempts,
    YELLOW_CARDS,
    Red_Cards,
    xg,
    xA,
    '2018' AS SEASON_START
  FROM {{ source('fbref_historic', '2018') }}),

FBREF_SEASON_2019 AS(
  SELECT
    NAME,
    Nationality,
    POSITION,
    TEAM,
    AGE,
    Matches_Played,
    STARTS,
    MINUTES,
    GOALS,
    ASSISTS,
    PENALTIES,
    Penalty_Attempts,
    YELLOW_CARDS,
    Red_Cards,
    xg,
    xA,
    '2019' AS SEASON_START
  FROM {{ source('fbref_historic', '2019') }}),

FBREF_SEASON_2020 AS(
  SELECT
    NAME,
    Nationality,
    POSITION,
    TEAM,
    AGE,
    Matches_Played,
    STARTS,
    MINUTES,
    GOALS,
    ASSISTS,
    PENALTIES,
    Penalty_Attempts,
    YELLOW_CARDS,
    Red_Cards,
    xg,
    xA,
    '2020' AS SEASON_START
  FROM {{ source('fbref_historic', '2020') }}),

FBREF_SEASON_2021 AS(
  SELECT
    NAME,
    Nationality,
    POSITION,
    TEAM,
    AGE,
    Matches_Played,
    STARTS,
    MINUTES,
    GOALS,
    ASSISTS,
    PENALTIES,
    Penalty_Attempts,
    YELLOW_CARDS,
    Red_Cards,
    xg,
    xA,
    '2021' AS SEASON_START
  FROM {{ source('fbref_historic', '2021') }}),

FBREF_SEASON_2022 AS(
  SELECT
    NAME,
    Nationality,
    POSITION,
    TEAM,
    AGE,
    Matches_Played,
    STARTS,
    MINUTES,
    GOALS,
    ASSISTS,
    PENALTIES,
    Penalty_Attempts,
    YELLOW_CARDS,
    Red_Cards,
    xg,
    xA,
    '2022' AS SEASON_START
  FROM {{ source('fbref_historic', '2022') }}),

FBREF_SEASON_2023 AS(
  SELECT
    NAME,
    Nationality,
    POSITION,
    TEAM,
    AGE,
    Matches_Played,
    STARTS,
    MINUTES,
    GOALS,
    ASSISTS,
    PENALTIES,
    Penalty_Attempts,
    YELLOW_CARDS,
    Red_Cards,
    xg,
    xA,
    '2023' AS SEASON_START
  FROM {{ source('fbref_historic', '2023') }})

SELECT * FROM FBREF_SEASON_2016
UNION ALL SELECT * FROM FBREF_SEASON_2017
UNION ALL SELECT * FROM FBREF_SEASON_2018
UNION ALL SELECT * FROM FBREF_SEASON_2019
UNION ALL SELECT * FROM FBREF_SEASON_2020
UNION ALL SELECT * FROM FBREF_SEASON_2021
UNION ALL SELECT * FROM FBREF_SEASON_2022
UNION ALL SELECT * FROM FBREF_SEASON_2023