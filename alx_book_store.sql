"""""
Database Name: alx_book_store
"""""
CREATE DATABASE alx_book_store;

USE alx_book_store

"""""
Books: Stores information about books available in the bookstore.

book_id (Primary Key)
title VARCHAR(130)
author_id (Foreign Key referencing Authors table)
price DOUBLE
publication_date DATE
"""""

CREATE TABLE Books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(130) NOT NULL,
    author_id INT,
    price DOUBLE NOT NULL,
    publication_date DATE,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

"""""
Authors: Stores information about authors.

author_id (Primary Key)
author_name VARCHAR(215)
"""""

CREATE TABLE Authors (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    author_name VARCHAR(215) NOT NULL
);

"""""
Customers: Stores information about customers.

customer_id (Primary Key)
customer_name VARCHAR(215)
email VARCHAR(215)
address TEXT
"""""

CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(215) NOT NULL,
    email VARCHAR(215) NOT NULL,
    address TEXT
);
"""""
Orders: Stores information about orders placed by customers.

order_id (Primary Key)
customer_id (Foreign Key referencing Customers table)
order_date DATE
"""""

CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);
"""""
Order_Details: Stores information about the books included in each order.

orderdetailid (Primary Key)
order_id (Foreign Key referencing Orders table)
book_id (Foreign Key referencing Books table)
quantity DOUBLE
"""""

CREATE TABLE Order_Details (
    orderdetailid INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    book_id INT,
    quantity DOUBLE,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);
