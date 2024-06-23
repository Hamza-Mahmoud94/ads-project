WITH source_bing AS (
    SELECT channel, FLOOR(SUM(spend)/ sum(conv)) as cc_bing FROM test.src_ads_bing_all_data
    GROUP BY channel
    LIMIT 1
),
source_fb AS (
    SELECT channel, CEIL(SUM(spend) / sum(purchase)) as cc_fb FROM test.src_ads_creative_facebook_all_data
    GROUP BY channel
    LIMIT 1
),
source_tk AS (
    SELECT channel, CEIL(SUM(spend) / sum(conversions)) as cc_tk FROM test.src_ads_tiktok_ads_all_data
    GROUP BY channel
    LIMIT 1
),
source_tw AS (
    SELECT channel, FLOOR(SUM(spend) / sum(impressions)) as cc_tw FROM test.src_promoted_tweets_twitter_all_data
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