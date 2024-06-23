{{ config(
    materialized='table'
) }}

WITH source AS (
    SELECT
        channel as channel_name,
        SUM(engagements) as engagements,
        SUM(conversions) as conversions,
        SUM(impressions) as impressions
    FROM {{ ref('unified_ads') }}
    GROUP BY channel
)

SELECT * FROM source