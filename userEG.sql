-- 创建用户

CREATE USER lzf IDENTIFIED BY '123456';

-- 修改密码（修改当前用户密码）
SET PASSWORD = PASSWORD('111111'); -- 旧版本
ALTER USER lzf IDENTIFIED BY '12345'; -- 新版本 8.0记住这个版本就行

-- 重命名
RENAME USER lzf TO lzfcbx;

-- 用户授权 all privileges 全部的权限，库.表
GRANT ALL PRIVILEGES ON *.* TO lzfcbx;

-- 查询权限
SHOW GRANTS FOR lzfcbx; -- 查看指定用户的权限
SHOW GRANTS FOR root@localhost;

-- 撤销权限 ，在哪个库撤销，给谁撤销
REVOKE ALL PRIVILEGES ON *_* FROM lzfcbx;  -- 执行不了

-- 删除用户
DROP USER lzf;

