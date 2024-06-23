{{ config(materialized='table') }}

SELECT
    0 as ad_id,
    channel,
    campaign_id,
    text as ad_description,
    impressions,
    clicks,
    engagements,
    spend,
    0 as conversions,
    date
FROM {{ ref('src_promoted_tweets_twitter_all_data') }}