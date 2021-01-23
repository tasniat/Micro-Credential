-- 1. Create a table with the following parameters:
--  CustomerID
--  CustomerName
--  Address
--  City
--  PostalCode
--  Country
--  Email
CREATE TABLE Customer (
  CustomerID INTEGER NOT NULL,
  CustomerName VARCHAR(30) NOT NULL,
  Address VARCHAR(50) NOT NULL,
  City VARCHAR(50) NOT NULL,
  PostalCode VARCHAR(10) NOT NULL,
  Country VARCHAR(50) NOT NULL,
  Email VARCHAR(50) NOT NULL,
  CONSTRAINT pk_customer PRIMARY KEY(CustomerID)
); 

-- 2. Insert 3 rows of data into these columns using INSERT. The data you insert should make sense
-- for the column.
INSERT INTO CUSTOMER VALUES(101,'Isi Dedrick','820 Myers Ave','Dunedin','34698','United States of America','isi.dendrick@gmail.com');
INSERT INTO CUSTOMER VALUES(102,'Aziz Daniel','58 Garfield Road','Braintree','02184','United States of America','azizdaniel21@yahoo.com');
INSERT INTO CUSTOMER VALUES(103,'Ciel Frederiksen','1999 Monroe Street','Houston','77026','United States of America','cielfrederiksen1999@gmail.com');

SELECT * FROM CUSTOMER 

-- 3. Use an UPDATE to modify any portion of the data
UPDATE CUSTOMER
SET EMAIL = 'azizdaniel7032@gmail.com'
WHERE CUSTOMERID = 102

SELECT * FROM CUSTOMER 

-- 4. Finally, write a statement to delete one row of data.
DELETE FROM CUSTOMER 
WHERE CITY = 'Dunedin'

SELECT * FROM CUSTOMER 