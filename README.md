# sql-intership-elevate-labs-task5
# SQL Joins Practice

## Objective
The goal of this task is to practice combining data from multiple tables using various SQL JOIN types.

---

## Tools Used
- MySQL Workbench / DB Browser for SQLite

---

## Step 1: Create Tables
We created two related tables: **customer** and **orderss**.

```sql
CREATE TABLE customer (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30),
    city VARCHAR(30)
);

CREATE TABLE orderss (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product VARCHAR(30),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);
