-- 查询学员所属的年级（学号，学生的姓名，年级名称）
SELECT s.`studentno`,`studentname`,`gradename`
FROM `student` AS s
INNER JOIN `grade` AS g ON 
s.`gradeid` = g.`gradeid`;

-- 查询科目所属的年级（科目名称，年级名称）
SELECT `subjectname`,`gradename`
FROM `subject` AS sub
INNER JOIN `grade` AS g ON 
sub.`gradeid` = g.`gradeid`;

-- 查询了参加考试的大二同学的高等数学-2信息：学号，学生姓名，科目名，分数，年级名称
-- 注意不要范ambiguous的错误
SELECT s.`studentno` AS '学号',`gradename` AS '年级',`studentname` AS '学生姓名',`subjectname` AS '科目名',`studentresult`AS '成绩'
FROM `student` AS s
RIGHT JOIN `result` AS r ON
s.`studentno` = r.`studentno`
INNER JOIN `subject` AS sub ON
r.`subjectno` = sub.`subjectno`
INNER JOIN `grade` AS g ON
g.`gradeid` = s.`gradeid`
WHERE s.`gradeid` = 2 AND sub.`subjectno` = 2;

UPDATE `result` SET `studentresult` = 72
WHERE `subjectno` = 2 AND `studentno` =5;

