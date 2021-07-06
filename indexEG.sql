USE school;
SHOW INDEX FROM student;

-- 增加一个索引
ALTER TABLE school.`student` ADD FULLTEXT INDEX `studentname`(`studentname`);

-- explain 分析sql执行的状况
EXPLAIN SELECT * FROM `student`; -- 非全文索引
EXPLAIN SELECT;