-- 01.撰寫一select敘述，查詢Table: DEPT，列出所有資料
select * from DEPT

-- 02.撰寫一select敘述，查詢Table: EMP，列出所有員工的員工姓名(ENAME)、
-- 職稱(JOB)、到職日(HIREDATE)、及員工編號(EMPNO)，員工編號需顯示在第一欄.
select
ENAME,JOB,HIREDATE,EMPNO
from EMP

-- 03.撰寫一select敘述，查詢Table: EMP，列出所有到職日(HIREDATE) ，同樣的到職日不重複顯示.
select distinct
HIREDATE
from EMP

-- 04.續第02題，將select敘述加上別名.
select
ENAME as EmployeeName,
JOB as Title,
HIREDATE as HireDate,
EMPNO as EmployeeNo
from EMP

-- 05.撰寫一select敘述，查詢Table: EMP，列出員工姓名(ENAME)串接職稱(JOB)，中間用逗號
-- 和空白隔開(', ')，並加上別名 NAMEandTITLE.
select 
	CONCAT(ENAME,",",JOB) as NAMEandTITLE
from EMP