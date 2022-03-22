-- 01.請新建 會員資料表MEMBER，欄位描述如下..
create table MEMBER (
	ID int auto_increment comment '編號' primary key , 
    USERNAME varchar(50) comment '帳號' ,
    PASSWORD bit(50) comment '密碼' ,
    PASS bit(1) default (0) comment '帳號開通日期' ,
    CREATE_DATE datetime comment '建立日期',
    LAST_UPDATE_DATE datetime 
) comment '會員資料表';


-- 02.請對資料表MEMBER的欄位PASSWORD之後加入一欄位..
alter table MEMBER
add column NICKNAME varchar(50) comment '暱稱' after PASSWORD;

-- 03.請修改資料表MEMBER的欄位
-- USERNAME、PASSWORD: not null、長度100
-- LAST_UPDATE_DATE: 預設值NOW()、註解"最後修改日期"
alter table MEMBER
modify column USERNAME varchar(12) not null,
modify column PASSWORD varchar(22) not null,
modify column LAST_UPDATE_DATE datetime comment '最後修改日期';
alter table MEMBER
alter column LAST_UPDATE_DATE set default (NOW());


-- 04.請將資料表MEMBER的欄位USERNAME設為唯一鍵
alter table MEMBER modify ID int, drop primary key;
alter table MEMBER add primary key (USERNAME);

-- 05.請將資料表MEMBER的欄位USERNAME的唯一鍵約束移除

alter table MEMBER drop primary key;
