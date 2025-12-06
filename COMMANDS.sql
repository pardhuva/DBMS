sql commands to interact with relational databases into two groups ddl and dml

ddl- CREATE to create nwe table
   - ALTER to modify the table
   - DROP to delete entire table
dml- SEELCT to retrieve records from table
   -INSERT to create a records
   - UPDATE modifies record
   -DELETE delete records

//to create table
CREATE TABLE table_name(
     ID   int,
     name varchar(20),
     dept_name  varchar(25),
     salary int
);

//think column means attribute

DESC table_name   //to view the structure of the table

INSERT INTO table_name(attributes(id,dept,salary))
VALUES (101,"science",40000);                           //to insert values into table

SELECT column1,column2,columnn(attributes to print)
FROM table_name;                                     //to fetch the data from the databases
if you use SELECT* it prints all the attributes

SELECT id,name
FROM table_name            //to extract only those records that satisfy the specified condition
WHERE condition;                  

//ALTER TABLE to add or delete or modify the columns in an existing table

ALTER TABLE table_name        //to add the column in an existing table
ADD column_name datatype   

ALTER TABLE table_name        //to drop the column
DROP column_name datatype 

ALTER TABLE table_name                    //to modify the column in an existing table
MODIFY COLUMN column_name datatype 

//UPDATE statement to modify the existing records in a table 

UPDATE table_name
SET name="paru"(colum=value)   //to modify
WHERE condition;

//BETWEEN operator selct values within a given range including starting and ending value

SELECT*
FROM table_name
WHERE salary BETWEEN 2988 AND 4356;

//LIKE operator in a WHERE clause to search for a specified pattern in acolums

SELECT column
FROM table_name
WHERE column LIKE pattern;
"%a" means end with a "a%" value start with a  "%or%" values that have or in any position "_" represents single character
"a_%" start with a and have atleast two cahracters in length  "a%0" stat with a and ends with 0  and "[a-f]%" starts with letters from a to f

//IN operator allows you to specify multiple values in aWHERE clause 
SELECT column_name
FROM table_name
WHERE column_name IN(value1,value2,....);

//DELETE  statement to dlete existing records in a table

DELETE FROM table_name WHERE conditio;(used to delete tuples);

//DROP statement to drop an existing table in a databases

DROP TABLE table_name;

//for adding primary key

ALTER TABLE table_name
ADD PRIMARY KEY(primary_key);

//for adding foreign key

ALTER TABLE table_name
ADD CONSTRAINT constraint_name
FOREIGN KEY (foreign_key) REFERENCES primary_key_table(primary_key);

//for dropping primary key and foreign key

ALTER TABLE table_name
DROP PRIMARY KEY;

ALTER TABLE table_name
DROP CONSTRAINT constraint_name;

//MYSQL CONSTRAINTS
//NOT NULL
CREATEE TABLE table_name(
   aut_id  int NOT NULL           //to make sure it is not null
)

//CHECK
CREATEE TABLE table_name(
   aut_id  int NOT NULL,CHECK(aut_id>=100)           //specifies condition that all tuples should satisfy
)

//UNIQUE
CREATEE TABLE table_name(
   aut_id  int   NOT NULL,CHECK(aut_id>=100)  
   aut_name varchar(10)          
   UNIQUE(aut_id)
)

//DEFAULT 
CREATEE TABLE table_name(
   aut_id  int   NOT NULL,CHECK(aut_id>=100)  
   aut_name  varchar(10)    DEFAULT 'anoos'      //sets a default value       
   UNIQUE(aut_id)
)

//to calculate age if dateofbith is given
TIMESTAMPDIFF(year,dateofbirth,CURDATE()) AS age    //store it as age

//COUNT(attribute)

SELECT COUNT(emp_name) AS total_employees
       COUNT(*) AS total_employees                                     //count the emp_names and store it in total total_employees

//GROUP BY
 to group rows that have same value
 GROUP BY emp_dept

 //MAX(attribute)
//to calculate the maximum value

//ORDER BY to order either in ascending order or descending order

ORDER BY income ASC    //order by income in asccending order and DESC for high to low

//HAVING 
//same as WHERE nu twe use where when group is not used or before using group but having is used when group by is used

