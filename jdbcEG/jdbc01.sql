CREATE DATABASE jdbcstudy CHARSET = utf8mb4 COLLATE utf8mb4_general_ci;
USE jdbcstudy;

CREATE TABLE users(
 `id` INT PRIMARY KEY,
 `name` VARCHAR(40),
 `password` VARCHAR(40),
 `email` VARCHAR(60),
 `birthday` DATE
 );
 
 INSERT INTO users(id,`name`,`password`,email,birthday)
 VALUES
 (1,'zhansan','123456','zs@sina.com','1980-12-04'),
 (2,'lisi','123456','lisi@sina.com','1981-12-04'),
 (3,'wangwu','123456','wangwu@sina.com','1979-12-04');