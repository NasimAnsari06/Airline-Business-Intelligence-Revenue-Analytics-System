-- AIRLINE MARKET SHARE ANALYSIS

SELECT
    airline,
    COUNT(*) AS total_flights,

    ROUND(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM clean_dataset),
        2
    ) AS market_share_percentage

FROM clean_dataset

GROUP BY airline

ORDER BY market_share_percentage DESC;