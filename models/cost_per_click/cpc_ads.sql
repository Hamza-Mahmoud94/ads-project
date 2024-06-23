WITH source_bing AS (
    SELECT channel, ROUND(sum(spend)/SUM(clicks), 2) as cpc_bing FROM test.src_ads_bing_all_data
    GROUP BY channel
    LIMIT 1
),
source_fb AS (
    SELECT channel, ROUND(SUM(spend)/SUM(clicks), 2) as cpc_fb FROM test.src_ads_creative_facebook_all_data
    GROUP BY channel
    LIMIT 1
),
source_tk AS (
    SELECT channel, ROUND(SUM(spend)/SUM(clicks), 2) as cpc_tk FROM test.src_ads_tiktok_ads_all_data
    GROUP BY channel
    LIMIT 1
),
source_tw AS (
    SELECT channel, ROUND(SUM(spend)/SUM(clicks), 2) as cpc_tw FROM test.src_promoted_tweets_twitter_all_data
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