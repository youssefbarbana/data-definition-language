CREATE TABLE Product (
	Product_id VARCHAR2(20) CONSTRAINT PRIMARY KEY,
	Product_Name VARCHAR2(20) CONSTRAINT NOT NULL,
	Price NUMBER CHECK (Price>0),
);

CREATE TABLE Customer (
	Customer_id VARCHAR2(20) CONSTRAINT PRIMARY KEY,
	Customer_Name VARCHAR2(20) CONSTRAINT NOT NULL,
	Customer_Tel NUMBER,
);

CREATE TABLE Orders (
	Customer_id VARCHAR2(20) CONSTRAINT PRIMARY KEY,
	Product_id VARCHAR2(20) CONSTRAINT FOREIGN KEY,
	Quantity NUMBER,
    Total_amount NUMBER,
    CONSTRAINT pk_Orders FOREIGN KEY(Customer_id) REFERENCES Customer (Customer_id),
    CONSTRAINT pk_Orders FOREIGN KEY(Product_id) REFERENCES Product (Product_id),

);
ALTER TABLE Product ADD Category VARCHAR2(20); 
ALTER TABLE Orders ADD OrderDate DATE DEFAULT SYSDATE ;