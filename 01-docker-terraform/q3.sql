SELECT
    CASE
        WHEN trip_distance <= 1 THEN 'Up to 1 mile'
        WHEN trip_distance > 1 AND trip_distance <= 3 THEN 'Between 1 and 3 miles'
        WHEN trip_distance > 3 AND trip_distance <= 7 THEN 'Between 3 and 7 miles'
        WHEN trip_distance > 7 AND trip_distance <= 10 THEN 'Between 7 and 10 miles'
        ELSE 'Over 10 miles'
    END AS distance_range,
    COUNT(*) AS trip_count
FROM green_taxi_trips
WHERE lpep_pickup_datetime >= '2019-10-01'
  AND lpep_pickup_datetime < '2019-11-01'
GROUP BY
    CASE
        WHEN trip_distance <= 1 THEN 'Up to 1 mile'
        WHEN trip_distance > 1 AND trip_distance <= 3 THEN 'Between 1 and 3 miles'
        WHEN trip_distance > 3 AND trip_distance <= 7 THEN 'Between 3 and 7 miles'
        WHEN trip_distance > 7 AND trip_distance <= 10 THEN 'Between 7 and 10 miles'
        ELSE 'Over 10 miles'
    END;