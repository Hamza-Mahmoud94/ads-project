{{ config(materialized='table') }}

WITH bing AS (
    SELECT * FROM {{ ref('bing_ads') }}
),
fb AS (
    SELECT * FROM {{ ref('fb_ads') }}
),
tw AS (
    SELECT * FROM {{ ref('tw_ads') }}
),
tk AS (
    SELECT * FROM {{ ref('tk_ads') }}
)

SELECT * FROM bing
UNION ALL
SELECT * FROM fb
UNION ALL
SELECT * FROM tw
UNION ALL
SELECT * FROM tk