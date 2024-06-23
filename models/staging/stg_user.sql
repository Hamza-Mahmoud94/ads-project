{{ config(materialized='view') }}

WITH source AS (
    SELECT * FROM {{ ref('src_ads_bing_all_data') }}
)

SELECT * FROM source