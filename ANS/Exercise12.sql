-- 01.請替資料表DEPT的欄位DNAME，新建唯一索引，並取出適當的Index名稱
create index IDX_EMP_DNAME
on EMP(DNAME);

-- 02.請替資料表EMP的欄位(DEPTNO, ENAME)，新建複合索引，Index名稱為IDX_EMP_DEPTNO&ENAME
create index `IDX_EMP_DEPTNO&ENAME`
on EMP(DEPTNO,ENAME);

-- 03.請新建一個資料表PERSON，欄位描述如下..
-- Column Name   DataType(Length) not null?     PK?
--    ID           int               Y           Y
--   NAME       varchar(50)          Y
-- 並同時替欄位NAME加上一般索引

create table PERSON(
	ID int not null primary key,
    NAME varchar(50) not null references DEPTNO
);


-- 04.請使用alter table敘述，替資料表DEPT的欄位(DNAME, LOC)加入複合索引

alter table DEPT
add index `IDX_DEPT_DNAME&LOC`(DNAME,LOC);


-- 05.請移除第04題建立的索引

drop index `IDX_DEPT_DNAME&LOC` on DEPT;

