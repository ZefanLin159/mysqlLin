-- =====================================
SELECT s.`studentno`,`studentname`,`subjectname`,`studentresult`
FROM `student` AS s
RIGHT JOIN `result` AS r ON 
s.`studentno` = r.`studentno`
INNER JOIN `subject` AS sub ON
r.`subjectno` = sub.`subjectno`
WHERE sub.`subjectno` =10 AND r.`studentresult` <= 80
ORDER BY r.`studentresult` ASC
LIMIT 0,2;

-- ===================where===========================
-- 1.查询数据库结构-2的所有考试结果（学号，科目编号，成绩），降序
SELECT r.`studentno`,r.`subjectno`,`studentresult`
FROM `result` AS r
INNER JOIN `subject` AS sub ON
r.`subjectno` = sub.`subjectno`
WHERE sub.`subjectname` = '高等数学-2'
ORDER BY `studentresult` DESC ;

-- 方式二：使用子查询（）
SELECT `studentno`,`subjectno`,`studentresult`
FROM `result` 
WHERE `subjectno` = (
SELECT `subjectno` FROM `subject` WHERE `subjectname` = '数据库结构-2' -- 由里及外
);

-- 查询所有数据库结构-2的学生学号
 SELECT `subjectno` FROM `subject` WHERE `subjectname` = '数据库结构-2';
 
 -- 分数不小于80分的学生的学号和姓名

 