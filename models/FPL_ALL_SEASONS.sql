WITH FPL_SEASON_2017 AS(
  SELECT
    NAME,
    Clean_Sheets,
    Goals_Conceded,
    Own_Goals,
    SAVES,
    COST,
    Points,
    '2017' AS SEASON_START
  FROM {{ source('fpl_historic', '2017') }}),

FPL_SEASON_2018 AS(
  SELECT
    NAME,
    Clean_Sheets,
    Goals_Conceded,
    Own_Goals,
    SAVES,
    COST,
    Points,
    '2018' AS SEASON_START
  FROM {{ source('fpl_historic', '2018') }}),

FPL_SEASON_2019 AS(
  SELECT
    NAME,
    Clean_Sheets,
    Goals_Conceded,
    Own_Goals,
    SAVES,
    COST,
    Points,
    '2019' AS SEASON_START
  FROM {{ source('fpl_historic', '2019') }}),

FPL_SEASON_2020 AS(
  SELECT
    NAME,
    Clean_Sheets,
    Goals_Conceded,
    Own_Goals,
    SAVES,
    COST,
    Points,
    '2020' AS SEASON_START
  FROM {{ source('fpl_historic', '2020') }}),

FPL_SEASON_2021 AS(
  SELECT
    NAME,
    Clean_Sheets,
    Goals_Conceded,
    Own_Goals,
    SAVES,
    COST,
    Points,
  FROM {{ source('fpl_historic', '2021') }}),

FPL_SEASON_2022 AS(
  SELECT
    NAME,
    Clean_Sheets,
    Goals_Conceded,
    Own_Goals,
    SAVES,
    COST,
    Points,
    '2022' AS SEASON_START
  FROM {{ source('fpl_historic', '2022') }}),

FPL_SEASON_2023 AS(
  SELECT
    NAME,
    Nationality,
    POSITION,
    NAME,
    Clean_Sheets,
    Goals_Conceded,
    Own_Goals,
    SAVES,
    COST,
    Points,
    '2023' AS SEASON_START
  FROM {{ source('fpl_historic', '2023') }})

SELECT * FROM FPL_SEASON_2017
UNION ALL SELECT * FROM FPL_SEASON_2018
UNION ALL SELECT * FROM FPL_SEASON_2019
UNION ALL SELECT * FROM FPL_SEASON_2020
UNION ALL SELECT * FROM FPL_SEASON_2021
UNION ALL SELECT * FROM FPL_SEASON_2022
UNION ALL SELECT * FROM FPL_SEASON_2023