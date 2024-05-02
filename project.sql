CREATE DATABASE SymbiosisClassifieds;
USE SymbiosisClassifieds;
-- DROP DATABASE SymbiosisClassifieds;
-- drop table admin;
CREATE TABLE Admin(ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY, Email varchar(100), Passwordp varchar(100));
INSERT INTO Admin values(1, 'admin@sitpune.edu.in', 'admin123');
SELECT * FROM Admin;

CREATE TABLE User(UId INT NOT NULL AUTO_INCREMENT PRIMARY KEY , Uname varchar(100), Upassword varchar(100), Uemail varchar(100) UNIQUE, Upnum varchar(15) UNIQUE, Uadd text);
INSERT INTO User VALUES(1, 'Samarth Chandak', 'Samarth@12345', 'samarth.chandak.btech2022@sitpune.edu.in', '8876500001', 'Wakad, Pune');
INSERT INTO User VALUES(2, 'Nikunj Arora', 'Nikunj@12345', 'nikunj.arora.btech2022@sitpune.edu.in', '9976500091', 'Baner, Pune');
INSERT INTO User VALUES(3, 'Rani Mahajan', 'Rani@12345', 'rani.mahajan.btech2022@sitpune.edu.in', '8276511001', 'S.B. Road, Pune');
INSERT INTO User VALUES(4, 'Tanvi Bhatia', 'Tanvi@12345', 'tanvi.bhatia.btech2022@sitpune.edu.in', '8902345612', 'SusGaon, Pune');
INSERT INTO User VALUES(5, 'Varun Dhawan', 'Varun@12345', 'varun.dhawan.btech2022@sitpune.edu.in', '9976500001', 'Viman Nagar, Pune');
INSERT INTO User VALUES(6, 'Aarav Patel', 'Aarav@12345', 'aarav.patel.btech2022@sitpune.edu.in', '7756001234', 'Kothrud, Pune');
INSERT INTO User VALUES(7, 'Aditi Sharma', 'Aditi@12345', 'aditi.sharma.btech2022@sitpune.edu.in', '9820098765', 'Hadapsar, Pune');
INSERT INTO User VALUES(8, 'Aryan Singh', 'Aryan@12345', 'aryan.singh.btech2022@sitpune.edu.in', '8956231470', 'Kondhwa, Pune');
INSERT INTO User VALUES(9, 'Ishaan Gupta', 'Ishaan@12345', 'ishaan.gupta.btech2022@sitpune.edu.in', '9203546812', 'Katraj, Pune');
INSERT INTO User VALUES(10, 'Riya Kapoor', 'Riya@12345', 'riya.kapoor.btech2022@sitpune.edu.in', '9568742013', 'Pashan, Pune');

SELECT * FROM User;
-- drop table items;

CREATE TABLE Items(Item_ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY, ItemName VARCHAR(50), IDescription VARCHAR(255), PlaceFound VARCHAR(50), DateFound DATE, DateClaimed DATE, IStatus VARCHAR(20), ID INT, UId INT, FOREIGN KEY(ID) REFERENCES Admin(ID), FOREIGN KEY(UID) REFERENCES User(UID));
INSERT INTO Items VALUES(1, 'Airpods', 'White Colour', 'Classroom 402, A Wing', '2023-05-01', '2023-05-05', 'Claimed', 1, 1);
INSERT INTO Items VALUES(2, 'Umbrella', 'Black Colour', 'Classroom 401, A Wing', '2023-07-02', '2023-07-05', 'Claimed', 1, 2);
INSERT INTO Items VALUES(3, 'Calculator', 'White Colour and Model Casio-FX-991ES', 'Classroom 102, D Wing', '2023-05-01', NULL, 'Not Claimed', 1, 3);
INSERT INTO Items VALUES(4, 'Earphones', 'Black Boat Earphones', 'Classroom 302, A Wing', '2024-01-29', '2024-02-02', 'Claimed', 1, 4);
INSERT INTO Items VALUES(5, 'Samsung M32 phone', 'Black Colour', 'Classroom 403, A Wing', '2024-03-05', NULL, 'Not Claimed', 1, 5);
INSERT INTO Items VALUES(6, 'Laptop Bag', 'Grey Colour','Classroom 303, A Wing', '2024-02-15', NULL, 'Not Claimed', 1, 6);
INSERT INTO Items VALUES(7, 'Water Bottle', 'Milton Black Colour', 'Cafeteria', '2024-03-20', NULL, 'Not Claimed', 1, 7);
INSERT INTO Items VALUES(8, 'Sunglasses', 'Ray Ban Goggles','Library', '2024-04-05', NULL, 'Not Claimed', 1, 8);
INSERT INTO Items VALUES(9, 'Power Bank', 'Samsung Black Colour','Sports Complex', '2024-02-10', '2024-02-15', 'Claimed', 1, 9);
INSERT INTO Items VALUES(10, 'College ID Card', 'PRN 22070122080', 'Admin Office', '2024-04-25', NULL, 'Not Claimed', 1, 10);

SELECT * FROM Items;

-- DROP TABLE Product;
CREATE TABLE Product(Pid INT NOT NULL AUTO_INCREMENT PRIMARY KEY, Pname varchar(100), Pdescription varchar(100), Price FLOAT, PStatus VARCHAR(50), ID INT, UId INT, FOREIGN KEY(ID) REFERENCES Admin(ID), FOREIGN KEY(UID) REFERENCES User(UID));
INSERT INTO Product (Pid,Pname, Pdescription, Price, PStatus, ID, UId) VALUES
(1,'Table', 'Foldable Table,Light-weight', 399.99, 'Available', 1, 1),
(2,'BS Grewal Mathematics Book', 'Reference Book, In good condition', 450.00, 'Available', 1, 2),
(3,'OnePlus Headphones', 'Noise-cancelling, Bluetooth, Over-ear Design', 550.50, 'Not Available', 1, 3),
(4,'EGL Set', 'Drafter, Sheet Holder, Roller Scale', 360.50, 'Available', 1, 4),
(5,'Quantum Computing in Physics', 'Reference Book, In good condition', 699.99, 'Not Available', 1, 5),
(6,'Bean Bag', 'Comfortable, Large Size', 799.99, 'Available', 1, 6),
(7,'Wireless Mouse', 'Ergonomic Design, Long Battery Life', 299.00, 'Available', 1, 7),
(8,'Bluetooth Speaker', 'Portable, High Quality Sound', 999.50, 'Not Available', 1, 8),
(9,'Fitness Tracker', 'Waterproof, Heart Rate Monitor', 599.99, 'Available', 1, 9),
(10,'Yoga Mat', 'Non-Slip, Lightweight', 499.00, 'Not Available', 1, 10);
SELECT * FROM Product;

-- drop table FlatAvailability;
CREATE TABLE FlatAvailability(FlatID INT NOT NULL AUTO_INCREMENT PRIMARY KEY, OwnerName VARCHAR(50), OwnerContact VARCHAR(10), BHK VARCHAR(50), Details VARCHAR(50), FDescription VARCHAR(50), RentPerMonth Int , ID INT, UId INT, FOREIGN KEY(ID) REFERENCES Admin(ID), FOREIGN KEY(UID) REFERENCES User(UID));
INSERT INTO FlatAvailability (FlatID, OwnerName, OwnerContact, BHK, Details, FDescription, RentPerMonth, ID, UId) VALUES
(1,'Samarth Chandak', '9818170179', '3 BHK', 'Available', '2 Balcony, 3 Washrooms attatched with rooms', 20000, 1, 1),
(2,'Nikunj Arora', '8879514701', '2 BHK', 'Available', '2 Balcony, 2 Washrooms, 1 Store Room', 15000, 1, 2),
(3,'Rani Mahajan', '8262810467', '1 BHK', 'Not Available', '1 Balcony, 1 Washroom, 1 Store Room', 10000, 1, 3),
(4,'Tanvi Bhatia', '9667700242', '3 BHK', 'Available', '2 Balcony, 3 Washrooms', 25000, 1, 4),
(5,'Varun Dhawan', '9310880395', '2 BHK', 'Not Available', '2 Balcony, 2 Washrooms', 18000, 1, 5),
(6,'Aarav Patel', '7756021345', '1 BHK', 'Not Available', '1 Balcony, 1 Washroom, Furnished', 12000, 1, 6),
(7,'Aditi Sharma', '9820032156', '2 BHK', 'Available', '1 Balcony, 2 Washrooms', 17000, 1, 7),
(8,'Aryan Singh', '8956234170', '3 BHK', 'Available', '2 Balcony, 3 Washrooms', 22000, 1, 8),
(9,'Ishaan Gupta', '9203546812', '2 BHK', 'Not Available', '1 Balcony, 2 Washrooms', 15000, 1, 9),
(10,'Riya Kapoor', '9568743012', '1 BHK', 'Available', '1 Balcony, 1 Washroom', 10000, 1, 10);
SELECT * FROM FlatAvailability;

CREATE VIEW ItemView AS SELECT * FROM Items;
SELECT * FROM ItemView;

CREATE VIEW ProductView AS SELECT * FROM Product;
SELECT * FROM ProductView;

CREATE VIEW FlatAvailabilityView AS SELECT * FROM FlatAvailability;
SELECT * FROM FlatAvailabilityView;
-- drop view FlatAvailabilityView;

CREATE TABLE LogTable (
    LogID INT AUTO_INCREMENT PRIMARY KEY,
    LogMessage VARCHAR(255),
    LogDateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- stored procedure
DELIMITER //
-- DROP PROCEDURE TableDetails;
CREATE PROCEDURE TableDetails(IN table_name VARCHAR(100))
BEGIN
    SET @sql_query = CONCAT('SELECT * FROM ', table_name, ' ;');
    PREPARE stmt FROM @sql_query;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END //

DELIMITER ;

CALL TableDetails('Product');


-- update query
UPDATE Product SET PStatus='Not Available' WHERE Pid=2;

-- delete query
DELETE FROM Items WHERE UId IN( SELECT UId FROM User WHERE Uadd='Wakad Pune');

-- joins
-- 1. To display all products along with the users who posted them and their corresponding contact details:
SELECT Product.Pname, Product.Pdescription, User.Uname, User.Upnum FROM Product INNER JOIN User ON Product.UId= User.UId;

-- 2. To display all items along with their owners' names and flat availability details (if available):
SELECT Items.ItemName, Items.PlaceFound, User.Uname as OwnerName, FlatAvailability.BHK, FlatAvailability.RentPerMonth 
FROM Items
LEFT JOIN User ON Items.UId= User.UId
LEFT JOIN FlatAvailability ON Items.UId= FlatAvailability.UId;

-- 3. To display all items and products along with their respective availability status and the admins who posted them:
SELECT 'Item' AS ItemType, Items.ItemName as Name, Items.IStatus AS Availability, Admin.Email as PostedBy FROM Items
LEFT JOIN Admin ON Items.ID= Admin.ID
UNION
SELECT 'Product' AS ItemType, Product.PName as Name, Product.PStatus AS Availability, Admin.Email as PostedBy FROM Product
LEFT JOIN Admin ON Product.ID= Admin.ID;

-- 4. To Determine the total number of items claimed by each user, including users who haven't claimed any items: (implementing GROUP BY clause):
SELECT User.Uname, COUNT(Items.Item_ID) AS TotalItemsClaimed FROM User
LEFT JOIN Items on User.UId= Items.UId WHERE Items.IStatus='Claimed' GROUP BY User.UId, User.Uname;

-- 5. To determine the total rent earned from flat availabilities posted by each admin, including admins who haven't posted any flat availabilities:
SELECT Admin.Email as PostedBy, SUM(FlatAvailability.RentPerMonth) AS TotalRentEarned FROM Admin
LEFT JOIN FlatAvailability ON Admin.ID= FlatAvailability.ID GROUP BY Admin.ID, Admin.Email;

-- views
-- 1. View to display all claimed items along with the details of the users who claimed them:
CREATE VIEW ClaimedItemsView AS SELECT Items.Item_ID, Items.ItemName, Items.PlaceFound, Items.DateFound, Items.DateClaimed, User.Uname AS ClaimedBy FROM Items
INNER JOIN User on Items.UId= User.UId WHERE Items.IStatus='Claimed';
SELECT* FROM ClaimedItemsView;

-- 2. View to display all available products along with their descriptions and the contact details of the users who posted them:
CREATE VIEW AvailableProductsView AS SELECT Product.Pname, Product.Pdescription, User.Uname AS PostedBy, User.Upnum AS ContactNumber FROM Product
INNER JOIN User on Product.UId= User.UId WHERE Product.PStatus='Available';
SELECT* FROM AvailableProductsView;

-- 3. View to display the total rent earned from flat availabilities posted by each admin: 
CREATE VIEW RentEarnedView AS SELECT Admin.Email as PostedBy, SUM(FlatAvailability.RentPerMonth) AS TotalRentEarned 
FROM Admin
LEFT JOIN FlatAvailability ON Admin.ID= FlatAvailability.ID GROUP BY Admin.ID, Admin.Email;
SELECT* FROM RentEarnedView;

-- functions
-- 1. Function to Retrieve Total Number of Products Posted by a User:
-- DROP FUNCTION IF EXISTS GetTotalProductsPostedByUser;
DELIMITER //
CREATE FUNCTION GetTotalProductsPostedByUser(userId INT)
RETURNS INT
DETERMINISTIC
BEGIN
	DECLARE totalProducts INT;
    SELECT COUNT(*) INTO totalProducts FROM Product WHERE UId=userId;
    RETURN totalProducts;
END//

DELIMITER ;
SELECT GetTotalProductsPostedByUser(1) AS TotalProductsPosted;

-- 2. Function to Check if an Item Name Exists in the Database:
-- DROP FUNCTION IF EXISTS CheckIfItemExists;
DELIMITER //
CREATE FUNCTION CheckIfItemExists(itemName VARCHAR(50))
RETURNS BOOLEAN
READS SQL DATA
BEGIN
	DECLARE itemExists BOOLEAN;
    SELECT EXISTS(SELECT 1 FROM Items WHERE ItemName=itemName) INTO itemExists;
    RETURN itemExists;
END//
DELIMITER ;
SELECT CheckIfItemExists('Umbrella') AS ItemExists;

-- 3. Function to display the Total Number of Items Claimed by a User:
-- DROP FUNCTION IF EXISTS GetTotalItemsClaimedByUser;
DELIMITER //
CREATE FUNCTION GetTotalItemsClaimedByUser(userId INT)
RETURNS INT 
NO SQL
BEGIN
	DECLARE totalItemsClaimed INT;
    SELECT COUNT(*) INTO totalItemsClaimed FROM Items WHERE UId = userId AND IStatus='Claimed';
    RETURN totalItemsClaimed;
END//

DELIMITER ;
SELECT GetTotalItemsClaimedByUser(1) AS TotalItemsClaimed;

-- stored procedure
-- 1. Stored Procedure to Retrieve Total Number of Users: 
-- DROP PROCEDURE IF EXISTS GetTotalUsers;
DELIMITER //
CREATE PROCEDURE GetTotalUsers(OUT totalUsers INT)
BEGIN
	SELECT COUNT(*) INTO totalUsers FROM User;
END//

DELIMITER ;
CALL GetTotalUsers(@totalUsers);
SELECT @totalUsers;

-- 2. Stored Procedure to Retrieve Total Number of Items:
-- DROP PROCEDURE IF EXISTS GetTotalItems;
DELIMITER //
CREATE PROCEDURE GetTotalItems(OUT totalItems INT)
BEGIN
	SELECT COUNT(*) INTO totalItems FROM Items;
END//

DELIMITER ;
CALL GetTotalItems(@totalItems);
SELECT @totalItems;

-- 3. Stored Procedure to Retrieve Total Number of Products:
-- DROP PROCEDURE IF EXISTS GetTotalProducts;
DELIMITER //
CREATE PROCEDURE GetTotalProducts(OUT totalProducts INT)
BEGIN
	SELECT COUNT(*) INTO totalProducts FROM Product;
END//

DELIMITER ;
CALL GetTotalProducts(@totalProducts);
SELECT @totalProducts;

-- triggers

-- 1. Trigger to log flat availability changes:
-- DROP TRIGGER IF EXISTS LogFlagAvailability;
DELIMITER //
CREATE TRIGGER logFlagAvailabilty AFTER UPDATE ON FlatAvailability
FOR EACH ROW
BEGIN
	DECLARE log_message VARCHAR(255);
	IF OLD.Details != NEW.Details THEN
		SET log_message = CONCAT('Flat details updated for flatID: ', NEW.FlatID);
        INSERT INTO LogTable (LogMessage, LogDateTime) VALUES (log_message, NOW());
	END IF;
END;
//

DELIMITER ;

UPDATE FlatAvailability SET Details='2 BHK' WHERE FlatID=1;
SELECT * FROM LogTable;

-- 2. Trigger to execute when a new product inserted into Produc table is greater then Average price

DELIMITER //
CREATE TRIGGER CheckProductPrice
AFTER INSERT ON Product
FOR EACH ROW
BEGIN
    DECLARE avg_price FLOAT;
    DECLARE new_price FLOAT;
    SELECT AVG(Price) INTO avg_price FROM Product;
    SELECT NEW.Price INTO new_price;
    IF new_price > avg_price THEN
        INSERT INTO LogTable (LogMessage) VALUES ('Inserted product price is greater than the average price.');
    END IF;
END;
//

DELIMITER ;

INSERT INTO Product (Pid,Pname, Pdescription, Price, PStatus, ID, UId) VALUES
(15,'Textbook', 'Engineering Mathematics Textbook Volume 3', 1500.0 , 'Available', 1, 1);

SELECT * FROM LogTable;





