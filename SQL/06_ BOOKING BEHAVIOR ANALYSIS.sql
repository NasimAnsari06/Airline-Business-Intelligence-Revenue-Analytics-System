
-- TAB 06 : BOOKING BEHAVIOR ANALYSIS


SELECT

    CASE

        WHEN days_left <= 3
        THEN 'Last Minute'

        WHEN days_left <= 10
        THEN 'Short Term'

        WHEN days_left <= 20
        THEN 'Medium Term'

        ELSE 'Advance Booking'

    END AS booking_category,

    COUNT(*) AS total_bookings,

    ROUND(
        AVG(price),
        2
    ) AS average_ticket_price

FROM clean_dataset

GROUP BY booking_category

ORDER BY average_ticket_price DESC;