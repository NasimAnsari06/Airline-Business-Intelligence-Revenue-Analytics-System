-- TAB 04 : ROUTE PROFITABILITY RANKING

WITH route_profitability AS
(
    SELECT

        CONCAT(
            source_city,
            ' → ',
            destination_city
        ) AS route,

        SUM(price) AS total_revenue

    FROM clean_dataset

    GROUP BY route
)

SELECT

    route,

    total_revenue,

    DENSE_RANK() OVER(
        ORDER BY total_revenue DESC
    ) AS profitability_rank

FROM route_profitability

LIMIT 10;