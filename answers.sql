-- Question  1

-- Create the table first bearing in mind you have Created the products database

CREATE TABLE productDetail(
  orderId INT,
  customerName VARCHAR(100),
  products VARCHAR(100),
  PRIMARY KEY (orderId, products)
);

-- Insert the data

INSERT INTO productDetail(orderId, customerName, products)
VALUES
(101, "John Doe", "Laptop"),
(101, "John Doe", "Mouse"),
(102, "Jane Smith", "Tablet"),
(102, "Jane Smith", "KeyBoard"),
(102, "Jane Smith", "Mouse"),
(103, "Emily Clark", "Phone");

-- Question 2

-- We create the tables  first

CREATE TABLE Orders (
  OrderID INT PRIMARY KEY,
  CustomerName VARCHAR(100)
);
-- Second Table 

CREATE TABLE OrderItems (
  OrderID INT,
  Product VARCHAR(100),
  Quantity INT,
  PRIMARY KEY (OrderID, Product),
  FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

-- We Insert the data to the tables

INSERT INTO Orders (OrderID, CustomerName)
VALUES
(101, 'John Doe'),
(102, 'Jane Smith'),
(103, 'Emily Clark');

INSERT INTO OrderItems (OrderID, Product, Quantity)
VALUES
(101, 'Laptop', 2),
(101, 'Mouse', 1),
(102, 'Tablet', 3),
(102, 'Keyboard', 1),
(102, 'Mouse', 2),
(103, 'Phone', 1);






