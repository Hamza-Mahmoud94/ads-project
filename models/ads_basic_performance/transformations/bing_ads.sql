{{ config(materialized='table') }}

SELECT
    ad_id,
    channel,
    campaign_id,
    ad_description,
    imps as impressions,
    clicks,
    0 as engagements,
    spend,
    conv as conversions,
    date
FROM {{ ref('src_ads_bing_all_data') }}