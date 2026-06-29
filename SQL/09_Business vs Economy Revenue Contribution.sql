-- TAB 09 : BUSINESS VS ECONOMY ANALYSIS

SELECT

    class,

    COUNT(*) AS total_flights,

    SUM(price) AS total_revenue,

    ROUND(
        AVG(price),
        2
    ) AS average_price,

    ROUND(
        SUM(price) * 100.0 /
        (SELECT SUM(price)
         FROM clean_dataset),
        2
    ) AS revenue_percentage

FROM clean_dataset

GROUP BY class

ORDER BY total_revenue DESC;