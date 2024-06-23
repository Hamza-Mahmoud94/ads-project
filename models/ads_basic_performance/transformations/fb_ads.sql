{{ config(materialized='table') }}

SELECT
    ad_id,
    channel,
    campaign_id,
    creative_title as ad_description,
    impressions,
    clicks,
    (add_to_cart + clicks + views + comments + likes + shares + complete_registration)as engagement,
    spend,
    purchase as conversions,
    date
FROM {{ ref('src_ads_creative_facebook_all_data') }}
