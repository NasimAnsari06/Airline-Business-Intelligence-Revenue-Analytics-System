-- : AIRLINE REVENUE CONTRIBUTION


SELECT
    airline,

    SUM(price) AS total_revenue,

    ROUND(
        SUM(price) * 100.0 /
        (SELECT SUM(price)
         FROM clean_dataset),
        2
    ) AS revenue_contribution_percentage

FROM clean_dataset

GROUP BY airline

ORDER BY total_revenue DESC;