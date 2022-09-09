USE AADHI_SHOPPINGDB

--Query to insert a record in Customer table--
INSERT INTO Customer(CustomerID,CustomerName,Email,Age,Phone)
VALUES(1,'Peter','Peter@gmail.com',28,'2343642879');

--Insert query to insert multiple records in Customer table--
INSERT INTO Customer(CustomerID,CustomerName,Email,Age,Phone)
VALUES(2,'James','James@gmail.com',25,'3462382737');
INSERT INTO Customer(CustomerID,CustomerName,Email,Age,Phone)
VALUES(3,'Steve','Steve@gmail.com',30,'3842381278');


--Query to update Age to 28 and Email --
UPDATE Customer
SET Age = 28, Email = 'James@hotmail.com'
WHERE CustomerID = 2


--Query to delete a record from Customer table where CustomerID--
DELETE FROM Customer
WHERE CustomerID = 3

--Query to delete all records from Customer table and make sure it cannot be rolled back--
BEGIN TRAN T1
    DELETE FROM Customer
    COMMIT TRAN T1