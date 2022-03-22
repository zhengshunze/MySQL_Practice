-- 01. 
-- 如截圖所示~

-- 02.請授予使用者william對資料庫EXAMPLE底下所有資料表的所有權限
grant all
on *.*
to 'william'@'192.168.43.5'
with grant option 

-- 03.請撤銷william 對資料庫EXAMPLE底下所有資料表的所有權限
revoke all
on *.*
from 'william'@'192.168.43.5';