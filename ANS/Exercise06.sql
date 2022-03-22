-- 01.請列出薪資比所有SALESMAN還低的員工
select * from EMP
where SAL < (
	select MIN(SAL)
	from EMP
	where JOB = 'SALESMAN'
	group by JOB);

-- 02.請列出到職年(到職日之年)最早的兩年,那兩年到職的員工,並依到職日排序
select * from EMP e1
where year(e1.HIREDATE) in (
select HIREYEAR.*
from (
	select distinct year(e2.HIREDATE) 
	from EMP e2
    limit 2) as HIREYEAR )
order by e1.HIREDATE asc;

-- 03.請列出主管的主管是KING 的員工
select * from EMP
where MGR in (
select e1.EMPNO
			 from EMP e1
				join EMP e2
					on e1.EMPNO = e2.MGR
where e1.ENAME like 'KING')

-- 04.請列出部門內員工薪資有3種薪資等級之部門名稱、部門所在地
select distinct d.DNAME, d.LOC
from EMP e
    join DEPT d
		on e.DEPTNO = d.DEPTNO
where e.DEPTNO in (
	select e.DEPTNO
	from EMP e
		join SAL_LEVEL s
			on e.SAL between s.SAL_MIN and s.SAL_MAX
	group by e.DEPTNO
	having count(distinct s.LEVEL) = 3);
	
-- 05.請列出跟員工姓名最後一字元是S的員工同部門,該部門薪資最低的員工之部門名稱、姓名、薪資
select d.DNAME, e.ENAME, e.SAL
from EMP e
    join DEPT d
		on e.DEPTNO = d.DEPTNO
where (e.DEPTNO, e.SAL) in(
	select DEPTNO, MIN(SAL)
	from EMP
	where DEPTNO in (
		select distinct DEPTNO 
		from EMP
		where ENAME like "%S")
	group by DEPTNO)
