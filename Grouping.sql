CREATE TABLE cars(make varchar(10))
# Create a new table

INSERT INTO cars VALUES('HONDA');
INSERT INTO cars VALUES('HONDA');
INSERT INTO cars VALUES('HONDA');
INSERT INTO cars VALUES('TOYOTA');
INSERT INTO cars VALUES('TOYOTA');
INSERT INTO cars VALUES('NISSAN');
INSERT INTO cars VALUES('NISSAN');

SELECT COUNT(*), make
FROM cars
GROUP BY make

SELECT * from cars

INSERT INTO cars VALUES(NULL);
INSERT INTO cars VALUES(NULL);
INSERT INTO cars VALUES(NULL);
INSERT INTO cars VALUES(NULL);
# Insert a bunch of null values into the data.

SELECT make
FROM cars
GROUP BY make
# Groups by car make. 

SELECT make, COUNT(*)
FROM cars
GROUP BY make
