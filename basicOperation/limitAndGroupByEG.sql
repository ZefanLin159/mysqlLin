-- =================分页 limit 和排序 group by==============
-- 排序：升序asc，降序desc
-- order by 通过哪个字段排序
-- 查询结果根据成绩排序
SELECT s.`studentno` AS '学号',`gradename` AS '年级',`studentname` AS '学生姓名',`subjectname` AS '科目名',`studentresult`AS '成绩'
FROM `student` AS s
RIGHT JOIN `result` AS r ON
s.`studentno` = r.`studentno`
INNER JOIN `subject` AS sub ON
r.`subjectno` = sub.`subjectno`
INNER JOIN `grade` AS g ON
g.`gradeid` = s.`gradeid`
WHERE s.`gradeid` = 2 AND sub.`subjectno` = 2
ORDER BY `studentresult` ASC;

-- 100w 数据

-- 为什么要分页？ 缓解数据库压力，给人的体验更好，瀑布流
-- 网页应用：首页 1-xx页 
-- 第一页 limit 0,5
-- 第二页 limit 5,5
-- 第三页 limit 10,5
-- 第N页 limit  0,5  (n-1)*pageSize,paeSize
-- [pageSize:页面大小，(n-1)*pageSize 起始值, n 当前页]
-- [(n-1)*pagesize 起始值]
-- [n:当前页】
-- 【数据总数/页面大小 = 总页数】
SELECT s.`studentno` AS '学号',`gradename` AS '年级',`studentname` AS '学生姓名',`subjectname` AS '科目名',`studentresult`AS '成绩'
FROM `student` AS s
RIGHT JOIN `result` AS r ON
s.`studentno` = r.`studentno`
INNER JOIN `subject` AS sub ON
r.`subjectno` = sub.`subjectno`
INNER JOIN `grade` AS g ON
g.`gradeid` = s.`gradeid`
ORDER BY `studentresult` ASC
limit 5,5


