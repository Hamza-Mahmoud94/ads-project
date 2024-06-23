{{ config(
    materialized='table'
) }}

WITH source AS (
    SELECT
        campaign_id,
        conversions as conversion_value
    FROM {{ ref('unified_ads') }}
)

SELECT * FROM source