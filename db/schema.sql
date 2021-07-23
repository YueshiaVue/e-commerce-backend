-- DROP DATABASE
DROP DATABASE IF EXISTS ecommerce_db;

-- CREATE DATABASE
CREATE DATABASE ecommerce_db;

USE ecommerce_db;

CREATE TABLE ecommerce_db.category (
	id INT auto_increment NOT NULL,
	category_name varchar(100) NULL,
	CONSTRAINT category_PK PRIMARY KEY (id)
);

CREATE TABLE ecommerce_db.product (
	id INT auto_increment NOT NULL,
	product_name varchar(100) NOT NULL,
	price DECIMAL NOT NULL,
	stock INT DEFAULT 10 NOT NULL,
	category_id INT NULL,
	CONSTRAINT product_PK PRIMARY KEY (id)
);

CREATE TABLE ecommerce_db.tag (
	id INT auto_increment NOT NULL,
	tag_name varchar(100) NULL,
	CONSTRAINT tag_PK PRIMARY KEY (id)
);

CREATE TABLE ecommerce_db.productTag (
	id INT auto_increment NOT NULL,
	product_id INT NULL,
	tag_id varchar(100) NULL,
	CONSTRAINT productTag_PK PRIMARY KEY (id)
);