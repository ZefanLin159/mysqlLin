-- ============事务================
-- mysql默认开启事务自动提交的
SET autocommit = 0; -- 关闭
SET autocommit = 1; -- 开启（默认的）

-- 手动处理事务
SET autocommit = 0;-- 关闭自动提交
-- 事务开启
START TRANSACTION;-- 标记一个事务的开始，从这个之后的sql在同一个事务内

-- 提交：持久化（提交！）
COMMIT
-- 回滚：回到原来的样子（失败！）
ROLLBACK
-- 事务结束
SET autocommit = 1 -- 开启自动提交

/*
savepoint  保存点名 -- 设置一个事务的保存点
rollback to savepoint 保存点名 -- 回滚到保存点
release savepoint 保存点名 -- 撤销指定的保存点
*/