DROP TABLE IF EXISTS `category` ;
CREATE TABLE `category`(
`categoryid` INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主题id',
`pid` INT NOT NULL COMMENT '父类id',
`categoryName` VARCHAR(50) NOT NULL COMMENT '主题名字',
PRIMARY KEY(`categoryid`)

)ENGINE = INNODB AUTO_INCREMENT=9 DEFAULT CHARSET = utf8mb4;-- 设置自增键，并且从指定的位置10后开始自增。


TRUNCATE TABLE `category`;
INSERT INTO `category`  (`categoryid`,`pid`,`categoryName`)
VALUES
(2,1,'信息技术'),
(3,1,'软件开发'),
(4,3,'数据库'),
(5,1,'美术设计'),
(6,3,'web开发'),
(7,5,'ps技术'),
(8,2,'办公信息');

-- 查询父子信息

SELECT a.`categoryName` AS '父栏目',b.`categoryName` AS '子栏目'
FROM `category` AS a, `category` AS b
WHERE a.`categoryid` = b.`pid`