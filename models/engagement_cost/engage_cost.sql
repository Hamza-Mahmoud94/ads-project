WITH source_bing AS (
    SELECT channel, 0 as cc_bing FROM test.src_ads_bing_all_data
    GROUP BY channel
    LIMIT 1
),
source_fb AS (
    SELECT channel, ROUND(SUM(spend) / (sum(add_to_cart) + sum(clicks) + sum(views) + sum(comments) + sum(likes) + sum(shares) + sum(complete_registration)), 2) as cc_fb FROM test.src_ads_creative_facebook_all_data
    GROUP BY channel
    LIMIT 1
),
source_tk AS (
    SELECT channel, 0 as cc_tk FROM test.src_ads_tiktok_ads_all_data
    GROUP BY channel
    LIMIT 1
),
source_tw AS (
    SELECT channel, round(SUM(spend) / sum(engagements), 2) as cc_tw FROM test.src_promoted_tweets_twitter_all_data
    GROUP BY channel
    LIMIT 1
)

SELECT * FROM source_bing
UNION ALL 
SELECT * FROM source_fb
UNION ALL 
SELECT * FROM source_tk
UNION ALL 
SELECT * FROM source_tw