# Questions

## Question 1

`128.3 MB`

## Question 2

`green_tripdata_2020-04.csv`

## Question 3

```sql
SELECT COUNT(*) 
FROM yellow_tripdata 
WHERE EXTRACT(YEAR FROM tpep_pickup_datetime) = 2020;
```
```sql
+----------+
| count    |
|----------|
| 24648219 |
+----------+
```

## Question 4

```sql
 SELECT COUNT(*) 
 FROM green_tripdata 
 WHERE EXTRACT(YEAR FROM lpep_pickup_datetime) = 2020;
```

```sql
+---------+
| count   |
|---------|
| 1733998 |
+---------+
```

## Question 5

```sql
SELECT COUNT(*) 
FROM yellow_tripdata 
WHERE EXTRACT(YEAR FROM tpep_pickup_datetime) = 2021;
AND EXTRACT(MONTH FROM CAST(tpep_pickup_datetime AS DATE)) = 3;
```

```sql
+---------+
| count   |
|---------|
| 1925119 |
+---------+
```

## Question 6

```cron
schedule:
  cron: "0 0 * * *"
  timezone: "America/New_York"
```