
-- TAB 07 : PREMIUM ROUTE DETECTION


WITH route_revenue AS
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

SELECT *

FROM route_revenue

WHERE total_revenue >

(
    SELECT
        AVG(total_revenue)
    FROM route_revenue
)

ORDER BY total_revenue DESC;