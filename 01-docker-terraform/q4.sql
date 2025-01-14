SELECT
    DATE(lpep_pickup_datetime) AS pickup_day,
    trip_distance AS longest_trip_distance
FROM green_taxi_trips
ORDER BY longest_trip_distance DESC
LIMIT 1;