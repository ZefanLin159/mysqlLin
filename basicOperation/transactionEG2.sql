-- 转账e.g
DROP DATABASE IF EXISTS shop;
CREATE DATABASE shop CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;
USE shop;
DROP TABLE IF EXISTS `account`;
CREATE TABLE IF NOT EXISTS `account`(
 `id` INT AUTO_INCREMENT NOT NULL COMMENT '账户id',
 `name` VARCHAR(20) NOT NULL COMMENT '账户名称',
 -- decimal数据类型在SQL Server中的定义的形式如下：
 -- decimal[(p[，s])]:其中，p是指精度，指定小数点左边和右边可以存储的十进制数字的最大个数。精度必须是1~38之间的值。
 -- s是指小数数位，小数数位必须是0~p之间。
 -- decimal(5,2) 是一个小数点前有 3 位数，小数点后有 2 位数的数字。
 `money` DECIMAL(9,2) NOT NULL COMMENT '账户金额',
 PRIMARY KEY (`id`)
)ENGINE = INNODB DEFAULT CHARSET = utf8mb4;

TRUNCATE TABLE `account`;
INSERT INTO `account`(`name`,`money`) VALUES
('A',2000.00),('B',10000.00);

-- 模拟转账：事务

SET autocommit = 0;
START TRANSACTION; -- 开启事务
SAVEPOINT beforeCommit; -- 只能在同一个事务内设置保存点，提交了就不能回退了
UPDATE `account` SET money = money -500 WHERE `name` = 'A' ;
UPDATE `account` SET money = money +500 WHERE `name` = 'B';
ROLLBACK TO  beforeCommit;
COMMIT; -- 提交了就回滚不了了
ROLLBACK;
SET autocommit = 1;
SELECT * FROM `account`;