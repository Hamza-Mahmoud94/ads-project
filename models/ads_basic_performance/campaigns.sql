{{ config(
    materialized='table'
) }}

WITH source AS (
    SELECT
        CAST(campaign_id AS STRING) AS campaign_id,
        spend as budget,
        channel,
    FROM {{ ref('unified_ads') }}
)

SELECT * FROM source