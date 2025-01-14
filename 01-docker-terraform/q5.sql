SELECT tz."Zone"
FROM green_taxi_trips AS t
JOIN taxi_zone_lookup AS tz ON t."PULocationID" = tz."LocationID"
WHERE DATE(lpep_pickup_datetime) = '2019-10-18'
GROUP BY tz."Zone"
HAVING SUM(total_amount) > 13000