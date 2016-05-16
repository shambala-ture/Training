-- 1) Get all employee details from employee table.

select * from Employee;
-- +-------------+------------+-----------+---------+--------------+---------------+
-- | EMPLOYEE_ID | FIRST_NAME | LAST_NAME | SALARY  | JOINING_DATE | DEPARTMENT_ID |
-- +-------------+------------+-----------+---------+--------------+---------------+
-- |           1 | Michel     | Clarke    | 1000000 | 2014-01-01   |             1 |
-- |           2 | Ricky      | Pointing  |  800000 | 2014-01-05   |             2 |
-- |           3 | Lasith     | Malinga   |  700000 | 2014-02-05   |             3 |
-- |           4 | Michael    | Hussey    |  600000 | 2014-04-03   |             1 |
-- |           5 | Lendly     | Simmons   |  650000 | 2014-06-15   |             2 |
-- |           6 | Jack       | Thoms     |  700000 | 2014-08-04   |             4 |
-- |           7 | Martin     | Philipose |  650000 | 2014-09-02   |             4 |
-- |           8 | Neil       | Johnson   |  600000 | 2014-11-03   |             3 |
-- +-------------+------------+-----------+---------+--------------+---------------+

select * from Department;
-- +---------------+-----------------+
-- | DEPARTMENT_ID | DEPARTMENT_NAME |
-- +---------------+-----------------+
-- |             1 | Programming     |
-- |             2 | Billing         |
-- |             3 | Testing         |
-- |             4 | Sales           |
-- |             5 | Designing       |
-- +---------------+-----------------+

 select * from Incentives;
-- +-----------------+---------------+------------------+
-- | EMPLOYEE_REF_ID | INCENTIVEDATE | INCENTIVE_AMOUNT |
-- +-----------------+---------------+------------------+
-- |               1 | 2014-04-01    |             5000 |
-- |               2 | 2014-04-01    |             3000 |
-- |               3 | 2014-05-01    |             6000 |
-- |               1 | 2014-08-01    |            10000 |
-- +-----------------+---------------+------------------+


-- 2) Get first name from employee table in upper case.

 Select UCASE(FIRST_NAME) as FirstName from Employee;
-- +-----------+
-- | FirstName |
-- +-----------+
-- | MICHEL    |
-- | RICKY     |
-- | LASITH    |
-- | MICHAEL   |
-- | LENDLY    |
-- | JACK      |
-- | MARTIN    |
-- | NEIL      |
-- +-----------+
 
 -- 3) Get maximum salaries from each department.

Select DEPARTMENT_ID, MAX(SALARY) from Employee order by DEPARTMENT_ID;
-- +---------------+-------------+
-- | DEPARTMENT_ID | MAX(SALARY) |
-- +---------------+-------------+
-- |             1 |     1000000 |
-- +---------------+-------------+

-- 4) Get 2nd highest salary from employee table.

 Select MAX(SALARY) from Employee where  SALARY < (Select MAX(SALARY) from Employee);
-- +-------------+
-- | MAX(SALARY) |
-- +-------------+
-- |      800000 |
-- +-------------+

-- 5) Get all employee details who salary is 3rd highest in the company.

select min(SALARY) from (select * from Employee order by SALARY desc limit 3)a;
-- +-------------+
-- | min(SALARY) |
-- +-------------+
-- |      700000 |
-- +-------------+

-- 6)  Get first name from employee table after removing white space from left side.

-- select * from Employee;
-- +-------------+------------+-----------+---------+--------------+---------------+
-- | EMPLOYEE_ID | FIRST_NAME | LAST_NAME | SALARY  | JOINING_DATE | DEPARTMENT_ID |
-- +-------------+------------+-----------+---------+--------------+---------------+
-- |           1 |    Michel  | Clarke    | 1000000 | 2014-01-01   |             1 |
-- |           2 | Ricky      | Pointing  |  800000 | 2014-01-05   |             2 |
-- |           3 | Lasith     | Malinga   |  700000 | 2014-02-05   |             3 |
-- |           4 | Michael    | Hussey    |  600000 | 2014-04-03   |             1 |
-- |           5 | Lendly     | Simmons   |  650000 | 2014-06-15   |             2 |
-- |           6 | Jack       | Thoms     |  700000 | 2014-08-04   |             4 |
-- |           7 | Martin     | Philipose |  650000 | 2014-09-02   |             4 |
-- |           8 | Neil       | Johnson   |  600000 | 2014-11-03   |             3 |
-- +-------------+------------+-----------+---------+--------------+---------------+


 Select LTRIM(FIRST_NAME) from Employee;

-- +-------------------+
-- | LTRIM(FIRST_NAME) |
-- +-------------------+
-- | Michel            |
-- | Ricky             |
-- | Lasith            |
-- | Michael           |
-- | Lendly            |
-- | Jack              |
-- | Martin            |
-- | Neil              |
-- +-------------------

 -- 7) Get employee details from employee table those first name length is greater than 10.


select * from Employee;
-- +-------------+-----------------+--------------+---------+--------------+---------------+
-- | EMPLOYEE_ID | FIRST_NAME      | LAST_NAME    | SALARY  | JOINING_DATE | DEPARTMENT_ID |
-- +-------------+-----------------+--------------+---------+--------------+---------------+
-- |           1 |    Michel       | Clarke       | 1000000 | 2014-01-01   |             1 |
-- |           2 | Ricky           | Pointing     |  800000 | 2014-01-05   |             2 |
-- |           3 | Lasith          | Malinga      |  700000 | 2014-02-05   |             3 |
-- |           4 | Michael         | Hussey       |  600000 | 2014-04-03   |             1 |
-- |           5 | Lendly          | Simmons      |  650000 | 2014-06-15   |             2 |
-- |           6 | Jack            | Thoms        |  700000 | 2014-08-04   |             4 |
-- |           7 | Martin          | Philiposeeee |  650000 | 2014-09-02   |             4 |
-- |           8 | NeilNitinMukesh | Johnson      |  600000 | 2014-11-03   |             3 |
-- +-------------+-----------------+--------------+---------+--------------+---------------+


Select * from Employee where length(FIRST_NAME) > 10 ;
-- +-------------+-----------------+-----------+--------+--------------+---------------+
-- | EMPLOYEE_ID | FIRST_NAME      | LAST_NAME | SALARY | JOINING_DATE | DEPARTMENT_ID |
-- +-------------+-----------------+-----------+--------+--------------+---------------+
-- |           8 | NeilNitinMukesh | Johnson   | 600000 | 2014-11-03   |             3 |
-- +-------------+-----------------+-----------+--------+--------------+---------------+


-- 8) Get first name from employee table after replacing ‘c’ with ‘o’.

 Select Replace(FIRST_NAME,'c','o') from Employee;
-- +-----------------------------+
-- | Replace(FIRST_NAME,'c','o') |
-- +-----------------------------+
-- |    Miohel                   |
-- | Rioky                       |
-- | Lasith                      |
-- | Miohael                     |
-- | Lendly                      |
-- | Jaok                        |
-- | Martin                      |
-- | Neil                        |
-- +-----------------------------+

-- 9) Get first name, Joining year, Joining Month, and joining date from employee table.

select year(joining_date),month(joining_date), DAY(joining_date) from EMPLOYEE;

-- +--------------------+---------------------+-------------------+
-- | year(joining_date) | month(joining_date) | Day(joining_date) |
-- +--------------------+---------------------+-------------------+
-- |               2014 |                   1 |                 1 |
-- |               2014 |                   1 |                 5 |
-- |               2014 |                   2 |                 5 |
-- |               2014 |                   4 |                 3 |
-- |               2014 |                   6 |                15 |
-- |               2014 |                   8 |                 4 |
-- |               2014 |                   9 |                 2 |
-- |               2014 |                  11 |                 3 |
-- +--------------------+---------------------+-------------------+

-- 10) Write down query which will alter the employee table engine from MySAM to INNODB.


show table status;
-- +------------+--------+---------+------------+------+----------------+-------------+-----------------+--------------+-----------+----------------+---------------------+---------------------+------------+-------------------+----------+----------------+---------+
-- | Name       | Engine | Version | Row_format | Rows | Avg_row_length | Data_length | Max_data_length | Index_length | Data_free | Auto_increment | Create_time         | Update_time         | Check_time | Collation         | Checksum | Create_options | Comment |
-- +------------+--------+---------+------------+------+----------------+-------------+-----------------+--------------+-----------+----------------+---------------------+---------------------+------------+-------------------+----------+----------------+---------+
-- | Department | InnoDB |      10 | Compact    |    5 |           3276 |       16384 |               0 |            0 |   8388608 |           NULL | 2016-05-13 16:09:18 | NULL                | NULL       | latin1_swedish_ci |     NULL |                |         |
-- | Employee   | MyISAM |      10 | Dynamic    |    8 |             37 |         300 | 281474976710655 |         1024 |         0 |           NULL | 2016-05-13 19:09:31 | 2016-05-13 19:09:31 | NULL       | latin1_swedish_ci |     NULL |                |         |
-- | Incentives | InnoDB |      10 | Compact    |    4 |           4096 |       16384 |               0 |            0 |   8388608 |           NULL | 2016-05-13 16:36:09 | NULL                | NULL       | latin1_swedish_ci |     NULL |                |         |
-- +------------+--------+---------+------------+------+----------------+-------------+-----------------+--------------+-----------+----------------+---------------------+---------------------+------------+-------------------+----------+----------------+---------+

ALTER TABLE Employee ENGINE=InnoDB;

show table status;
-- +------------+--------+---------+------------+------+----------------+-------------+-----------------+--------------+-----------+----------------+---------------------+-------------+------------+-------------------+----------+----------------+---------+
-- | Name       | Engine | Version | Row_format | Rows | Avg_row_length | Data_length | Max_data_length | Index_length | Data_free | Auto_increment | Create_time         | Update_time | Check_time | Collation         | Checksum | Create_options | Comment |
-- +------------+--------+---------+------------+------+----------------+-------------+-----------------+--------------+-----------+----------------+---------------------+-------------+------------+-------------------+----------+----------------+---------+
-- | Department | InnoDB |      10 | Compact    |    5 |           3276 |       16384 |               0 |            0 |   8388608 |           NULL | 2016-05-13 16:09:18 | NULL        | NULL       | latin1_swedish_ci |     NULL |                |         |
-- | Employee   | InnoDB |      10 | Compact    |    8 |           2048 |       16384 |               0 |            0 |   8388608 |           NULL | 2016-05-13 19:11:09 | NULL        | NULL       | latin1_swedish_ci |     NULL |                |         |
-- | Incentives | InnoDB |      10 | Compact    |    4 |           4096 |       16384 |               0 |            0 |   8388608 |           NULL | 2016-05-13 16:36:09 | NULL        | NULL       | latin1_swedish_ci |     NULL |                |         |
-- +------------+--------+---------+------------+------+----------------+-------------+-----------------+--------------+-----------+----------------+---------------------+-------------+------------+-------------------+----------+----------------+---------+


-- 11) Write down Stored procedure to calculate Square Root of input parameter.














-- 12) Get department name and department wise average salary from employee and department table order by salary ascending?


select DEPARTMENT_NAME, AVG(SALARY) as avg  from Department D  inner join Employee A on A.DEPARTMENT_ID=D.DEPARTMENT_ID group by DEPARTMENT_NAME order by avg asc;

-- +-----------------+-------------+
-- | DEPARTMENT_NAME | avg         |
-- +-----------------+-------------+
-- | Testing         | 650000.0000 |
-- | Sales           | 675000.0000 |
-- | Billing         | 725000.0000 |
-- | Programming     | 800000.0000 |
-- +-----------------+-------------+








-- 13) Select first_name, incentive amount from employee and incentives table for all employees even if they didn't get incentives and set incentive amount as 0 for those employees who didn't get incentives.

 Select FIRST_NAME, IFNULL(INCENTIVE_AMOUNT,0) from Employee A left join Incentives B on A.EMPLOYEE_ID=B.EMPLOYEE_REF_ID;
-- +------------+----------------------------+
-- | FIRST_NAME | IFNULL(INCENTIVE_AMOUNT,0) |
-- +------------+----------------------------+
-- |    Michel  |                       5000 |
-- |    Michel  |                      10000 |
-- | Ricky      |                       3000 |
-- | Lasith     |                       6000 |
-- | Michael    |                          0 |
-- | Lendly     |                          0 |
-- | Jack       |                          0 |
-- | Martin     |                          0 |
-- | Neil       |                          0 |
-- +------------+----------------------------+



-- 14) Select First name, last name from employee table as separate rows.

Select  FIRST_NAME from Employee union Select  LAST_NAME from Employee;
-- +------------+
-- | FIRST_NAME |
-- +------------+
-- |    Michel  |
-- | Ricky      |
-- | Lasith     |
-- | Michael    |
-- | Lendly     |
-- | Jack       |
-- | Martin     |
-- | Neil       |
-- | Clarke     |
-- | Pointing   |
-- | Malinga    |
-- | Hussey     |
-- | Simmons    |
-- | Thoms      |
-- | Philipose  |
-- | Johnson    |
-- +------------+

-- 15) Write syntax to drop primary key on employee table.


    ALTER TABLE Employee DROP PRIMARY KEY;
--  Query OK, 8 rows affected (0.16 sec)
