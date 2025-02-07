--Question 1
SELECT count(*) as trips
FROM data-engineering-447907.nytaxi.external_yellow_trip_data;
-- 20332093

-- Question 2
SELECT COUNT(DISTINCT(PULocationID)) AS locations
FROM data-engineering-447907.nytaxi.external_yellow_trip_data;
-- This query will process 0 B when run

SELECT COUNT(DISTINCT(PULocationID)) AS locations
FROM data-engineering-447907.nytaxi.yellow_trip_data_non_partitioned;
-- This query will process 155.12 MB when run

-- Question 3
SELECT PULocationID
FROM data-engineering-447907.nytaxi.yellow_trip_data_non_partitioned;

SELECT PULocationID, DOLocationID
FROM data-engineering-447907.nytaxi.yellow_trip_data_non_partitioned;
-- BigQuery is a columnar database, and it only scans the specific columns requested in the query. Querying two columns (PULocationID, DOLocationID) requires reading more data than querying one column (PULocationID), leading to a higher estimated number of bytes processed.

-- Question 4
SELECT COUNT(*)
FROM data-engineering-447907.nytaxi.yellow_trip_data_non_partitioned
WHERE fare_amount = 0;
-- 8333

-- Question 5
CREATE OR REPLACE TABLE `data-engineering-447907.nytaxi.yellow_trip_data_partitioned_clustered`
PARTITION BY DATE(tpep_dropoff_datetime)
CLUSTER BY VendorID AS
SELECT * FROM `nytaxi.external_yellow_trip_data`;

-- Question 6
SELECT DISTINCT(VendorID)
FROM data-engineering-447907.nytaxi.yellow_trip_data_non_partitioned
WHERE DATE(tpep_dropoff_datetime) BETWEEN '2024-03-01' AND '2024-03-15';
-- This query will process 310.24 MB when run

SELECT DISTINCT(VendorID)
FROM data-engineering-447907.nytaxi.yellow_trip_data_partitioned_clustered
WHERE DATE(tpep_dropoff_datetime) BETWEEN '2024-03-01' AND '2024-03-15';
-- This query will process 26.84 MB when run

-- Question 7
-- GCP Bucket

-- Question 8
-- False

-- Question 9
SELECT COUNT(*)
FROM data-engineering-447907.nytaxi.yellow_trip_data_non_partitioned;

SELECT * 
FROM `data-engineering-447907.nytaxi.INFORMATION_SCHEMA.TABLES` 
WHERE table_name = 'yellow_trip_data_non_partitioned';

-- O B. Metadata or cache used?