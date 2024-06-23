{{ config(
    materialized='table'
) }}

WITH source AS (
    SELECT
        campaign_id,
        date as engagement_date,
        engagements,
        channel as platform
    FROM {{ ref('unified_ads') }}
)

SELECT * FROM source