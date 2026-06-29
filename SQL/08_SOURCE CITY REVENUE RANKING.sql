-- TAB 08 : SOURCE CITY REVENUE RANKING

SELECT

    source_city,

    SUM(price) AS total_revenue,

    DENSE_RANK() OVER
    (
        ORDER BY
        SUM(price) DESC
    ) AS revenue_rank

FROM clean_dataset

GROUP BY source_city;