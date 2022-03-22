-- 01.請列出部門編號、部門平均薪資，只顯示部門平均薪資大於2500的部門
select DEPTNO,AVG(SAL)
from EMP
group by DEPTNO
having AVG(SAL)>2500

-- 02.請列出到職年、到職年當年人數，只顯示到職年當年人數等於1的資料
select    YEAR(HIREDATE),COUNT(*) 
from EMP
group by YEAR(HIREDATE)
having COUNT(*)=1

-- 03.請列出各部門編號、部門每月發出薪資總和，只顯示部門每月發出薪資總和小於10000的 
-- 部門，並依部門編號遞減排序
select DEPTNO,SUM(SAL)
from EMP
group by DEPTNO
having SUM(SAL)<10000

-- 04.請列出職稱、該職稱平均薪資、該職稱人數，只顯示職稱平均薪資大於2000且職稱人數小
-- 於2的資料
select JOB,AVG(SAL),count(*)
from EMP
group by JOB
having AVG(SAL)>2000 & count(*)<2

-- 05.請列出部門編號、部門最低薪資、部門最高薪資，且過濾掉最低薪資大於1200的資料
select DEPTNO,MIN(SAL),MAX(SAL)
from EMP
group by DEPTNO
having !(MIN(SAL)>1200)