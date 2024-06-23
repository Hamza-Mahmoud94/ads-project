{{ config(materialized='table') }}

SELECT
    ad_id,
    channel,
    campaign_id,
    ad_text as ad_description,
    impressions,
    clicks,
    0 as engagements,
    spend,
    conversions,
    date
FROM {{ ref('src_ads_tiktok_ads_all_data') }}