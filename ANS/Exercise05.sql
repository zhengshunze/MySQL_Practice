-- 01.請列出所有員工的員工編號、姓名、職稱、部門編號及部門名稱
select 
	e.EMPNO,
	e.ENAME,
    e.JOB,
	e.DEPTNO,
    d.DNAME
from
    EMP e
    join DEPT d
		on e.DEPTNO = d.DEPTNO

-- 02.請列出所有部門編號為30 且 職稱為"SALESMAN"之部門名稱、員工姓名、獎金
select 
	d.DNAME, 
	e.ENAME, 
	e.COMM
from  EMP e
    join DEPT d
		on e.DEPTNO = d.DEPTNO
where EMPNO = '30' & JOB ='SALESMAN'

-- 03.請列出薪水等級為"B"的員工之員工編號、員工姓名、薪資
select 
	e.EMPNO, 
	e.ENAME,
	e.SAL
from
    EMP e
    join SAL_LEVEL sl
        on e.SAL between sl.SAL_MIN
            and sl.SAL_MAX
where sl.LEVEL ='B'

-- 04.請列出部門編號、部門名稱及部門人數
select 
	e.DEPTNO, 
    d.DNAME,
    COUNT(*)
from
    EMP e
    join DEPT d
        on e.DEPTNO = d.DEPTNO
group by DEPTNO

-- 05.請列出每個主管之姓名、直屬下屬人數、直屬下屬平均薪資，並依 直屬下屬人數遞減、主管姓名遞增 排序
select 
	e1.ENAME, 
	count(*), 
	avg(e1.SAL)
from EMP e1
	join EMP e2
	    on e1.EMPNO = e2.MGR
group by e1.EMPNO, e1.SAL
order by count(*) desc, e1.ENAME asc