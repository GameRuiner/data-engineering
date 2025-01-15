# Module 1 Homework: Docker & SQL

## Question 1

```bash
docker run -it python:3.12.8 /bin/bash
pip -V
```

pip 24.3.1 from /usr/local/lib/python3.12/site-packages/pip (python 3.12)

## Question 2

db:5432

## Question 3

```bash
+------------------------+------------+
| distance_range         | trip_count |
|------------------------+------------|
| Between 1 and 3 miles  | 198995     |
| Between 3 and 7 miles  | 109642     |
| Between 7 and 10 miles | 27686      |
| Over 10 miles          | 35201      |
| Up to 1 mile           | 104830     |
+------------------------+------------+
```

## Question 4

```bash
+------------+-----------------------+
| pickup_day | longest_trip_distance |
|------------+-----------------------|
| 2019-10-31 | 515.89                |
+------------+-----------------------+
```

## Question 5

```bash
+---------------------+
| Zone                |
|---------------------|
| East Harlem North   |
| East Harlem South   |
| Morningside Heights |
+---------------------+
```

## Question 6

```bash
+-------------+-------------+
| Zone        | largest_tip |
|-------------+-------------|
| JFK Airport | 87.3        |
+-------------+-------------+
```


## Question 7

terraform init, terraform apply -auto-aprove, terraform destroy