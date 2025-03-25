-- aws rds 데이터 베이스 생성 
create database hrdb2019;

--  데이터 베이스 선택
use hrdb2019;

-- 테이블 목록 
show tables;

-- shoppy dump sql 파일 import 
-- 메뉴 server > Data Import > Dump 파일 선택 > 옵션 Structured & Data > Start Import 

drop view view_cart_list;
drop view view_order_list;
-- view 생성 
-- view_cart_list 생성
create view view_cart_list
as
select  `sc`.`CID` AS `cid`,
		`sc`.`SIZE` AS `size`,
        `sc`.`QTY` AS `qty`,
        `sm`.`ID` AS `id`,
        `sm`.`ZIPCODE` AS `zipcode`,
		`sm`.`ADDRESS` AS `address`,
        `sp`.`PID` AS `pid`,
        `sp`.`PNAME` AS `pname`,
        `sp`.`PRICE` AS `price`,
        format(`sp`.`PRICE`,0) AS `sprice`,`sp`.`DESCRIPTION` AS `info`,
        concat('http://3.35.233.94:9000/',
        json_unquote(json_extract(`sp`.`UPLOAD_FILE`,'$[0]'))) AS `image` 
from `hrdb2019`.`shoppy_cart` `sc` join `hrdb2019`.`shoppy_member` `sm` join `hrdb2019`.`shoppy_product` `sp` 
where ((`sc`.`ID` = `sm`.`ID`) and (`sc`.`PID` = `sp`.`PID`));

-- view_order_list 생성
create view view_order_list
as
select 
	`sc`.`CID` AS `cid`,
    `sc`.`SIZE` AS `size`,
    `sc`.`QTY` AS `qty`,
    `sm`.`ID` AS `id`,
    `sm`.`NAME` AS `name`,
    `sm`.`PHONE` AS `phone`,
    concat(`sm`.`EMAILNAME`,'@',`sm`.`EMAILDOMAIN`) AS `email`,
    `sm`.`ZIPCODE` AS `zipcode`,`sm`.`ADDRESS` AS `address`,
    `sp`.`PID` AS `pid`,`sp`.`PNAME` AS `pname`,
    `sp`.`PRICE` AS `price`,
    `sp`.`DESCRIPTION` AS `info`,
    concat('http://3.35.233.94:9000/',json_unquote(json_extract(`sp`.`UPLOAD_FILE`,'$[0]'))) AS `image` 
from `hrdb2019`.`shoppy_cart` `sc` 
	join `hrdb2019`.`shoppy_member` `sm` 
    join `hrdb2019`.`shoppy_product` `sp` 
where ((`sc`.`ID` = `sm`.`ID`) and (`sc`.`PID` = `sp`.`PID`));