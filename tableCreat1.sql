---create table
create table product1
(
product_id NUMBER(3) PRIMARY KEY,
product_name VARCHAR2(15),
product_qty NUMBER(4),
price NUMBER(5)
);
INSERT INTO product1 VALUES(101,'Shampoo',5,150);
INSERT INTO product1 VALUES(102,'Shop',5,80);
INSERT INTO product1 VALUES(103,'Conditionar',5,120);

DESC product1;
SELECT
    *
FROM product1;


CREATE table customer(
cust_id NUMBER(3) PRIMARY KEY,
cust_name VARCHAR2(20),
cust_address VARCHAR2(20),
cust_phone VARCHAR2(14),
product_id NUMBER(3),
CONSTRAINT product1_table FOREIGN KEY(product_id) REFERENCES product1(product_id)
);

INSERT INTO customer VALUES(001,'Hasan','Gulsan','01727874859',101);
INSERT INTO customer VALUES(002,'Nayeem','Saver','01727874850',103);
INSERT INTO customer VALUES(003,'Rakib','Savar','01727874855',101);

SELECT
    *
FROM customer;

CREATE TABLE bill(
id NUMBER(3)PRIMARY KEY,
Discount NUMBER(5),
total_pay NUMBER(5),
product_id NUMBER(3),
cust_id NUMBER(3),
CONSTRAINT product_table FOREIGN KEY (product_id) REFERENCES product1(product_id),
CONSTRAINT cust_table FOREIGN KEY (cust_id) REFERENCES customer(cust_id)
);

INSERT INTO bill values(1,500,5000,101,001);
INSERT INTO bill values(2,500,1000,101,002);
INSERT INTO bill values(3,500,8000,103,003);

SELECT
    *
FROM bill;
DESC bill;


