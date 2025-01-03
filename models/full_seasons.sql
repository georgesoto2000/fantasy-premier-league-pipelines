-- models/full_seasons.sql
WITH full_seasons AS (
  SELECT * FROM {{ ref('season_2017') }}
  UNION ALL
  SELECT * FROM {{ ref('season_2018') }}
  UNION ALL
  SELECT * FROM {{ ref('season_2019') }}
  UNION ALL
  SELECT * FROM {{ ref('season_2020') }}
  UNION ALL
  SELECT * FROM {{ ref('season_2021') }}
  UNION ALL
  SELECT * FROM {{ ref('season_2022') }}
)
SELECT * FROM full_seasons;