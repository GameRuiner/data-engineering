SELECT tz_dropoff."Zone", MAX(tip_amount) AS largest_tip
FROM green_taxi_trips AS t
JOIN taxi_zone_lookup AS tz_pickup ON t."PULocationID" = tz_pickup."LocationID"
JOIN taxi_zone_lookup AS tz_dropoff ON t."DOLocationID" = tz_dropoff."LocationID"
WHERE DATE(lpep_pickup_datetime) >= '2019-10-01'
  AND DATE(lpep_pickup_datetime) < '2019-11-01'
  AND tz_pickup."Zone" = 'East Harlem North'
GROUP BY tz_dropoff."Zone"
ORDER BY largest_tip DESC
LIMIT 1;