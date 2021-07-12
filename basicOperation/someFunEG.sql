
-- 聚合函数
SELECT COUNT(`studentname`) FROM `student`; -- count(字段)
-- count(*) count(1) 基本相同，搜索所有行
SELECT COUNT(*) FROM student; -- count(*)，不会忽略null
SELECT COUNT(1) FROM result; -- count(1),不会忽略null值

SELECT SUM(`studentresult`) AS 总和 FROM result;
SELECT AVG(`studentresult`) AS 平均分 FROM result;
SELECT MAX(`studentresult`) AS 平均分 FROM result;
SELECT MIN(`studentresult`) AS 平均分 FROM result;

-- 查询不同课程的平均分、最高分、最低分,平均分大于80分
-- 核心：（根据不同的课程分组）

SELECT `subjectname`,AVG(`studentresult`),MAX(`studentresult`),MIN(`studentresult`)
FROM `result` AS r
INNER JOIN `subject` AS sub ON
r.`subjectno` = sub.`subjectno`
GROUP BY r.`subjectno` -- 通过什么来分组
HAVING AVG(`studentresult`)>80 -- 分组后过滤，在guoup by