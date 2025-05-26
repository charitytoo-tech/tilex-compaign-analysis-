-- campaign_performance.sql

SELECT
    campaign_id,
    channel,
    region,
    impressions,
    clicks,
    conversions,
    ROUND((conversions * 1.0 / clicks) * 100, 2) AS conversion_rate,
    ROUND(spend / conversions, 2) AS cost_per_acquisition
FROM
    marketing_campaigns
WHERE
    campaign_start_date >= '2024-01-01'
    AND campaign_end_date <= '2024-12-31';
