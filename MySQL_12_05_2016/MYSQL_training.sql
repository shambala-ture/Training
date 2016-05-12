-- ------------+-----------+----------+------+------------+----------+
-- | EmployeeID | FirstName | LastName | Age  | PhoneNo    | City     |
-- +------------+-----------+----------+------+------------+----------+
-- |          1 | Sonakshi  | Sing     |   28 | 2147483647 | Mumbai   |
-- |          2 | Samar     | Jha      |   28 | 2147483647 | Dombivli |
-- +------------+-----------+----------+------+------------+----------+
-- 2 rows in set (0.00 sec)



 select * from Employees where EmployeeID=4;
-- +------------+-----------+----------+------+------------+--------+
-- | EmployeeID | FirstName | LastName | Age  | PhoneNo    | City   |
-- +------------+-----------+----------+------+------------+--------+
-- |          4 | Baburao   | Bhide    |   30 | 2147483647 | Nashik |
-- +------------+-----------+----------+------+------------+--------+
-- 1 row in set (0.00 sec)

 insert into Employees(EmployeeID, FirstName, LastName, Age, PhoneNo, City)values (5,"Kavya","Bde",20,9875456737,"Nashik");

 select * from Employees where Age=28 or City="Nashik";
 -- +------------+-----------+----------+------+------------+----------+
-- | EmployeeID | FirstName | LastName | Age  | PhoneNo    | City     |
-- +------------+-----------+----------+------+------------+----------+
-- |          1 | Sonakshi  | Sing     |   28 | 2147483647 | Mumbai   |
-- |          2 | Samar     | Jha      |   28 | 2147483647 | Dombivli |
-- |          4 | Baburao   | Bhide    |   30 | 2147483647 | Nashik   |
-- |          5 | Kavya     | Bde      |   20 | 2147483647 | Nashik   |
-- +------------+-----------+----------+------+------------+----------+

select * from Employees where Age=28 and City="Mumbai";
-- +------------+-----------+----------+------+------------+--------+
-- | EmployeeID | FirstName | LastName | Age  | PhoneNo    | City   |
-- +------------+-----------+----------+------+------------+--------+
-- |          1 | Sonakshi  | Sing     |   28 | 2147483647 | Mumbai |
-- +------------+-----------+----------+------+------------+--------+

 select * from Employees order by LastName;
-- +------------+-----------+-----------+------+------------+----------+
-- | EmployeeID | FirstName | LastName  | Age  | PhoneNo    | City     |
-- +------------+-----------+-----------+------+------------+----------+
-- |          5 | Kavya     | Bde       |   20 | 2147483647 | Nashik   |
-- |          4 | Baburao   | Bhide     |   30 | 2147483647 | Nashik   |
-- |          3 | Anuradha  | Chorasiya |   20 | 2147483647 | Pune     |
-- |          2 | Samar     | Jha       |   28 | 2147483647 | Dombivli |
-- |          1 | Sonakshi  | Sing      |   28 | 2147483647 | Mumbai   |
-- +------------+-----------+-----------+------+------------+----------+

 select * from Employees order by LastName desc;
-- +------------+-----------+-----------+------+------------+----------+
-- | EmployeeID | FirstName | LastName  | Age  | PhoneNo    | City     |
-- +------------+-----------+-----------+------+------------+----------+
-- |          1 | Sonakshi  | Sing      |   28 | 2147483647 | Mumbai   |
-- |          2 | Samar     | Jha       |   28 | 2147483647 | Dombivli |
-- |          3 | Anuradha  | Chorasiya |   20 | 2147483647 | Pune     |
-- |          4 | Baburao   | Bhide     |   30 | 2147483647 | Nashik   |
-- |          5 | Kavya     | Bde       |   20 | 2147483647 | Nashik   |
-- +------------+-----------+-----------+------+------------+----------+

 select * from Employees order by LastName,City;
-- +------------+-----------+-----------+------+------------+----------+
-- | EmployeeID | FirstName | LastName  | Age  | PhoneNo    | City     |
-- +------------+-----------+-----------+------+------------+----------+
-- |          5 | Kavya     | Bde       |   20 | 2147483647 | Nashik   |
-- |          4 | Baburao   | Bhide     |   30 | 2147483647 | Nashik   |
-- |          3 | Anuradha  | Chorasiya |   20 | 2147483647 | Pune     |
-- |          2 | Samar     | Jha       |   28 | 2147483647 | Dombivli |
-- |          1 | Sonakshi  | Sing      |   28 | 2147483647 | Mumbai   |
-- +------------+-----------+-----------+------+------------+----------+


 select * from Employees order by LastName asc,City desc;
-- +------------+-----------+-----------+------+------------+----------+
-- | EmployeeID | FirstName | LastName  | Age  | PhoneNo    | City     |
-- +------------+-----------+-----------+------+------------+----------+
-- |          5 | Kavya     | Bde       |   20 | 2147483647 | Nashik   |
-- |          4 | Baburao   | Bhide     |   30 | 2147483647 | Nashik   |
-- |          3 | Anuradha  | Chorasiya |   20 | 2147483647 | Pune     |
-- |          2 | Samar     | Jha       |   28 | 2147483647 | Dombivli |
-- |          1 | Sonakshi  | Sing      |   28 | 2147483647 | Mumbai   |
-- +------------+-----------+-----------+------+------------+----------+

insert into Employees(EmployeeID, FirstName, LastName, Age, PhoneNo, City)values (6,"Karan","Shinde",10,9856766667,"Aurangabad");

desc Employees;
-- +------------+-------------+------+-----+---------+-------+
-- | Field      | Type        | Null | Key | Default | Extra |
-- +------------+-------------+------+-----+---------+-------+
-- | EmployeeID | int(11)     | YES  |     | NULL    |       |
-- | FirstName  | varchar(20) | YES  |     | NULL    |       |
-- | LastName   | varchar(20) | YES  |     | NULL    |       |
-- | Age        | int(11)     | YES  |     | NULL    |       |
-- | PhoneNo    | int(10)     | YES  |     | NULL    |       |
-- | City       | varchar(20) | YES  |     | NULL    |       |
-- +------------+-------------+------+-----+---------+-------+
 Select * from Employees where FirstName like "S%";
-- +------------+-----------+----------+------+------------+----------+
-- | EmployeeID | FirstName | LastName | Age  | PhoneNo    | City     |
-- +------------+-----------+----------+------+------------+----------+
-- |          1 | Sonakshi  | Sing     |   28 | 2147483647 | Mumbai   |
-- |          2 | Sagar     | Jha      |   22 | 2147483647 | Dombivli |
-- +------------+-----------+----------+------+------------+----------+

Select * from Employees where FirstName like "%a";
-- +------------+-----------+-----------+------+------------+--------+
-- | EmployeeID | FirstName | LastName  | Age  | PhoneNo    | City   |
-- +------------+-----------+-----------+------+------------+--------+
-- |          3 | Anuradha  | Chorasiya |   20 | 2147483647 | Pune   |
-- |          5 | Kamya     | Kra       |   21 | 2147483647 | Satara |
-- +------------+-----------+-----------+------+------------+--------+

Select * from Employees where FirstName like "%ag%";
-- +------------+-----------+----------+------+------------+----------+
-- | EmployeeID | FirstName | LastName | Age  | PhoneNo    | City     |
-- +------------+-----------+----------+------+------------+----------+
-- |          2 | Sagar     | Jha      |   22 | 2147483647 | Dombivli |
-- |          4 | Nagrag    | Kundra   |   25 | 2147483647 | Mahad    |
-- +------------+-----------+----------+------+------------+----------+
 Select * from Employees where FirstName not like "_ag";
-- +------------+-----------+-----------+------+------------+----------+
-- | EmployeeID | FirstName | LastName  | Age  | PhoneNo    | City     |
-- +------------+-----------+-----------+------+------------+----------+
-- |          1 | Sonakshi  | Sing      |   28 | 2147483647 | Mumbai   |
-- |          2 | Sagar     | Jha       |   22 | 2147483647 | Dombivli |
-- |          3 | Anuradha  | Chorasiya |   20 | 2147483647 | Pune     |
-- |          4 | Nagrag    | Kundra    |   25 | 2147483647 | Mahad    |
-- |          5 | Kamya     | Kra       |   21 | 2147483647 | Satara   |
-- +------------+-----------+-----------+------+------------+----------+

 Select * from Employees where FirstName like "sa_a_";
-- +------------+-----------+----------+------+------------+----------+
-- | EmployeeID | FirstName | LastName | Age  | PhoneNo    | City     |
-- +------------+-----------+----------+------+------------+----------+
-- |          2 | Sagar     | Jha      |   22 | 2147483647 | Dombivli |
-- +------------+-----------+----------+------+------------+----------+


Select * from Employees where City in ( "Mumabai","Pune");
-- +------------+-----------+-----------+------+------------+------+
-- | EmployeeID | FirstName | LastName  | Age  | PhoneNo    | City |
-- +------------+-----------+-----------+------+------------+------+
-- |          3 | Anuradha  | Chorasiya |   20 | 2147483647 | Pune |
-- +------------+-----------+-----------+------+------------+------+

select * from Employees where (Age Between 22 and 28) and not EmployeeID in (1,2,3);
-- +------------+-----------+----------+------+------------+-------+
-- | EmployeeID | FirstName | LastName | Age  | PhoneNo    | City  |
-- +------------+-----------+----------+------+------------+-------+
-- |          4 | Nagrag    | Kundra   |   25 | 2147483647 | Mahad |
-- +------------+-----------+----------+------+------------+-------+
select * from Products;
-- +-----------+--------------------+------------+------------+-------+
-- | ProductID | ProductName        | SupplierID | CategoryID | Price |
-- +-----------+--------------------+------------+------------+-------+
-- |         1 | Chais              |          1 |          1 |    18 |
-- |         2 | Chang              |          1 |          1 |    19 |
-- |         3 | Aniseed            |          1 |          2 |    10 |
-- |         4 | Chef Anton's Cajun |          2 |          2 |    22 |
-- |         5 | Uncle Bob's        |          3 |          7 |    30 |
-- +-----------+--------------------+------------+------------+-------+

select * from Orders;
-- +---------+------------+------------+-----------+
-- | OrderID | CustomerID | EmployeeID | ShipperID |
-- +---------+------------+------------+-----------+
-- |   10208 |         90 |          5 |         4 |
-- |   10209 |         81 |          6 |         1 |
-- |   10210 |         34 |          3 |         2 |
-- |   10211 |         76 |          5 |         1 |
-- |   10212 |         14 |          9 |         3 |
-- +---------+------------+------------+-----------+

desc Employees;
-- +------------+-------------+------+-----+---------+-------+
-- | Field      | Type        | Null | Key | Default | Extra |
-- +------------+-------------+------+-----+---------+-------+
-- | EmployeeID | int(11)     | YES  |     | NULL    |       |
-- | FirstName  | varchar(20) | YES  | MUL | NULL    |       |
-- | LastName   | varchar(20) | YES  |     | NULL    |       |
-- | Age        | int(11)     | YES  |     | NULL    |       |
-- | PhoneNo    | int(10)     | YES  |     | NULL    |       |
-- | City       | varchar(20) | YES  |     | NULL    |       |
-- +------------+-------------+------+-----+---------+-------+


