-- TAB 05 : AIRLINE PRICING STRATEGY ANALYSIS

WITH market_average AS
(
    SELECT
        AVG(price) AS avg_market_price
    FROM clean_dataset
)

SELECT

    airline,

    ROUND(
        AVG(price),
        2
    ) AS airline_average_price,

    ROUND(
        AVG(price) -
        (SELECT avg_market_price
         FROM market_average),
        2
    ) AS premium_over_market

FROM clean_dataset

GROUP BY airline

ORDER BY premium_over_market DESC;