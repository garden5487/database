#실습 4-1
create table `Member` (
  `uid`    varchar(10) primary key,
  `name`   varchar(10) not null,
  `hp`     char(13) unique not null,
  `pos`    varchar(10) default '사원',
  `dep`    int,
  `rdata`   datetime not null
  );
  
  create table `Department` (
  `depNo`    int primary key,
  `name`   varchar(10) not null,
  `tel`     char(12) unique not null
);
 
  create table `Sales` (
  `seq`    int auto_increment primary key,
  `uid`   varchar(10) not null,
  `year`     char(13) unique not null,
  `month`    tinyint not null,
  `sale`    int
  );
  
  
  insert into `Member` values ('a101','박혁거세','010-1234-1001','부장',101, NOW());
  insert into `Member` values ('a102','김유신','010-1234-1002','차장',101, NOW());
  insert into `Member` values ('a103','김춘추','010-1234-1003','사원',101, NOW());
  insert into `Member` values ('a104','장보고','010-1234-1004','대리',102, NOW());
  insert into `Member` values ('a105','강감찬','010-1234-1005','과장',102, NOW());
  insert into `Member` values ('a106','이성계','010-1234-1006','차장',101, NOW());
  
  
  insert into `deapartment` values (101,'영업1부','051-512-1001');
  insert into `deapartment` values (102,'영업2부','051-512-1002');
  insert into `deapartment` values (103,'영업3부','051-512-1003');
  insert into `deapartment` values (104,'영업4부','051-512-1004');
  insert into `deapartment` values (105,'영업5부','051-512-1005');
  insert into `deapartment` values (106,'영업지원부','051-512-1006');
  insert into `deapartment` values (107,'인사부','051-512-1007');
  
  
  insert into `sales`(`uid`,`year`,`month`,`sale`) values ('a101',2018, 1, 98100);
  insert into `sales`(`uid`,`year`,`month`,`sale`) values ('a102',2018, 1, 136000);
  insert into `sales`(`uid`,`year`,`month`,`sale`) values ('a103',2018, 1, 80100);
  insert into `sales`(`uid`,`year`,`month`,`sale`) values ('a104',2018, 1, 78000);
  insert into `sales`(`uid`,`year`,`month`,`sale`) values ('a105',2018, 1, 93000);
  insert into `sales`(`uid`,`year`,`month`,`sale`) values ('a101',2018, 2, 23500);
  insert into `sales`(`uid`,`year`,`month`,`sale`) values ('a102',2018, 2, 126000);
  insert into `sales`(`uid`,`year`,`month`,`sale`) values ('a103',2018, 2, 18500);
  insert into `sales`(`uid`,`year`,`month`,`sale`) values ('a105',2018, 2, 19000);
  insert into `sales`(`uid`,`year`,`month`,`sale`) values ('a106',2018, 2, 53000);
  
  insert into `sales`(`uid`,`year`,`month`,`sale`) values ('a101',2019, 1, 24000);
  insert into `sales`(`uid`,`year`,`month`,`sale`) values ('a102',2019, 1, 109000);
  insert into `sales`(`uid`,`year`,`month`,`sale`) values ('a103',2019, 1, 101000);
  insert into `sales`(`uid`,`year`,`month`,`sale`) values ('a104',2019, 1, 53500);
  insert into `sales`(`uid`,`year`,`month`,`sale`) values ('a107',2019, 1, 24000);
  insert into `sales`(`uid`,`year`,`month`,`sale`) values ('a102',2019, 2, 160000);
  insert into `sales`(`uid`,`year`,`month`,`sale`) values ('a103',2019, 2, 101000);
  insert into `sales`(`uid`,`year`,`month`,`sale`) values ('a104',2019, 2, 43000);
  insert into `sales`(`uid`,`year`,`month`,`sale`) values ('a105',2019, 2, 24000);
  insert into `sales`(`uid`,`year`,`month`,`sale`) values ('a106',2019, 2, 109000);
  
  insert into `sales`(`uid`,`year`,`month`,`sale`) values ('a102',2020, 1, 201000);
  insert into `sales`(`uid`,`year`,`month`,`sale`) values ('a104',2020, 1, 63000);
  insert into `sales`(`uid`,`year`,`month`,`sale`) values ('a105',2020, 1, 74000);
  insert into `sales`(`uid`,`year`,`month`,`sale`) values ('a106',2020, 1, 122000);
  insert into `sales`(`uid`,`year`,`month`,`sale`) values ('a107',2020, 1, 111000);
  insert into `sales`(`uid`,`year`,`month`,`sale`) values ('a102',2020, 2, 120000);
  insert into `sales`(`uid`,`year`,`month`,`sale`) values ('a103',2020, 2, 93000);
  insert into `sales`(`uid`,`year`,`month`,`sale`) values ('a104',2020, 2, 84000);
  insert into `sales`(`uid`,`year`,`month`,`sale`) values ('a105',2020, 2, 180000);
  insert into `sales`(`uid`,`year`,`month`,`sale`) values ('a108',2020, 2, 76000);
  show
  
  #실습 4-3
  select * from `Memver` where `name`='김유신';
  select * from `Memver` where `name` <> '김춘추';
  select * from `Memver` where `pos` = '사원' or `pos`='대리';
  select * from `Memver` where `pos` IN ('사원','대리');
  select * from `Memver` where `name` like '정_'; 

    
    
#실습 4-4
select * from `Sales` order by `sale`;
select * from `Sales` order by `sale` ASC;
select * from `Sales` order by `sale` DESC;


#실습 4-5
select * from Sales LIMIT 3;
select * from Sales LIMIT 0, 3;
select * from Sales LIMIT 1, 2;
select * from Sales LIMIT 5  3;
select * from Sales ORDER BY `sale` DESC LIMIT 3, 5;
select * from Sales WHERE `sale` < 50000 order by `sale` DESC LIMIT 3;
select * from sales
 Where `sale` > 50000
 ORDER by `year` DEsc, `month`, `sale` DESC
 LIMIT 5;

#실습 4-6
select SUM(`sale`) AS `합계` from `sales`;
select ceiling(1.2);
select ceiling(1.8;
select floor(1.2);
select floor(1.8);
select round(1.2);
select rand(); #0에서 ~1사이 실수
select CEILING(rand() * 10); #1~10 사이 정수

select count(*) AS `갯수` from `sales`;
select left('HelloWorld', 5);
select right('HelloWorld', 5);
select substring('HelloWorld', 6, 5_);
select count('Hello' 'World');


#실습 4-7 2018년 1월 매출의 총합을 구하시오
select SUM(`sale`) as `2018년 1월 매출 총합` from `sales` where `year`=2018 

#실습 4-8 2019년 2월에 5만원 이상 매출에 대한 총합과 평균을 구하시오
select *from `sales`
sum(`sale`) as `총합`
AVG(`sale`) as `평균`
from `sales`
     where
		`year`=2019 and
        `month`=2 and
        `sale` >= 50000;
#실습 40-9 2020년 전체 매출 가운데 최저, 최고, 매출을 구하시오.
select 
      MIN(`sale`) as `최저`,
      MAX(`sale`) as `최고`
   from 
       `sales`
    Where
       `year`=2020;




user3
  
  
  