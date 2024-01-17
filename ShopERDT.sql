
USE University;

insert into `Customer` values ('c101', '김유신', '010-1234-1001', '경남 김해시', '2023-01-01');
insert into `Customer` values ('c102', '김춘추', '010-1234-1002', '경남 경주시', '2023-01-02');
insert into `Customer` values ('c103', '장보고', '010-1234-1003', '전남 완도군', '2023-01-03');
insert into `Customer` values ('c104', '강감찬', '010-1234-1004', '서울시 관악구', '2023-01-04');
insert into `Customer` values ('c105', '이순신', '010-1234-1005', '부산시 금정구', '2023-01-05');

insert into `Product` values (1, '새우깡', 5000, 1500, '농심');
insert into `Product` values (2, '초코파이', 2500, 2500, '오리온');
insert into `Product` values (3, '포카칩', 3600, 1700, '오리온');
insert into `Product` values (4, '양파링', 1250, 1800, '농심');
insert into `Product` values (5, '죠리퐁', 2200, null, '크라운');

insert into `Order` set `orderId`='c102', `orderProduct`=3, `orderCount`=2, `orderDate`=NOW();
insert into `Order` set `orderId`='c101', `orderProduct`=4, `orderCount`=1, `orderDate`=NOW();
insert into `Order` set `orderId`='c102', `orderProduct`=1, `orderCount`=1, `orderDate`=NOW();
insert into `Order` set `orderId`='c105', `orderProduct`=2, `orderCount`=1, `orderDate`=NOW();
insert into `Order` set `orderNo`=11, `orderId`='c103', `orderProduct`=8, `orderCount`=5, `orderDate`=NOW();

#실습 6-3
select 	
    `orderNo`,
    `name`,
    `prodName`,
    `orderCount`,
    `orderDate`    
 from `Order` as a
join `Customer` as b on a.orderId = b.custId
join `Product` as c on a.orderProduct = c.prodNo;

select 	
    `orderNo`,
    `prodNo`,        
    `prodName`,
    `price`,
    `orderCount`,
    `orderDate`    
 from `Order` as a
join `Customer` as b on a.orderId = b.custId
join `Product` as c on a.orderProduct = c.prodNo
where `name`='김유신';


select 
	SUM(`price` * `orderCount`)
from `Order` as a
join `Product` as b on a.orderProduct = b.prodNo;

#실습 6-5
INSERT INTO `bank_customer` VALUES ('730423-1000001','김유신',1,'010-1234-1001','경남 김해시');
INSERT INTO `bank_customer` VALUES ('730423-1000002','김춘추',1,'010-1234-1002','경남 경주시');
INSERT INTO `bank_customer` VALUES ('730423-1000003','장보고',1,'010-1234-1003','전남 완도군');
INSERT INTO `bank_customer` VALUES ('102-12-51094','(주)정보산업',2,'051-500-1004','부산시 부산 진구');
INSERT INTO `bank_customer` VALUES ('730423-1000005','이순신',1,'010-1234-1005','서울 종로구');

INSERT INTO `bank_account` VALUES ('101-11-1001','S1','자유저축예금','730423-1000001',1550000,'2011-04-11');
INSERT INTO `bank_account` VALUES ('101-11-1002','S1','자유저축예금','940423-1000005',260000,'2011-05-12');
INSERT INTO `bank_account` VALUES ('101-11-1003','S1','자유저축예금','750423-1000003',75000,'2011-06-13');
INSERT INTO `bank_account` VALUES ('101-12-1001','S2','기업전용예금','102-12-51094',15000000,'2011-07-14');
INSERT INTO `bank_account` VALUES ('101-13-1001','S3','정기저축예금','730423-1000002',1200000,'2011-08-15');

INSERT INTO `bank_transaction` SET `t_a_no` = '101-11-1001',`t_dist` =  1,`t_amount` = 50000,`t_datetime` = NOW();
INSERT INTO `bank_transaction` SET `t_a_no` = '101-12-1001',`t_dist` =  2,`t_amount` = 1000000,`t_datetime` = NOW();
INSERT INTO `bank_transaction` SET `t_a_no` = '101-11-1002',`t_dist` =  3,`t_amount` = 260000,`t_datetime` = NOW();
INSERT INTO `bank_transaction` SET `t_a_no` = '101-11-1002',`t_dist` =  3,`t_amount` = 100000,`t_datetime` = NOW();
INSERT INTO `bank_transaction` SET `t_a_no` = '101-11-1003',`t_dist` =  3,`t_amount` = 75000,`t_datetime` = NOW();
INSERT INTO `bank_transaction` SET `t_a_no` = '101-11-1001',`t_dist` =  1,`t_amount` = 150000,`t_datetime` = NOW();

set foreign_key_checks = 0;
#실습 6-6
SELECT `c_dist`,`c_name`,`c_phone`,`c_no`,`a_item_dist`,`a_balance`
   FROM `bank_customer` AS a
   JOIN `bank_account` AS b ON a.c_no = b.a_c_no;
   
SELECT `t_dist`,`t_amount`,`t_datetime`
  FROM `bank_transaction` AS A
  JOIN `bank_account` AS B ON a.t_a_no = b.a_no
  JOIN `bank_customer` AS C ON b.a_c_no = c.c_no
  WHERE `c_name` = '이순신';
  
select 
	`c_no`,
    `c_name`,
    `a_no`,
    `a_balance`,
    `a_open_date`
from `bank_customer` as a 
join `bank_account` as b on a.c_no = b.a_c_no
where `a_balance`=(select MAX(`a_balance`) from `bank_account`);    

#실습 6-8
INSERT INTO `Student` VALUES ('20201011','김유신','010-1234-1001',3,'경남 김해시');
INSERT INTO `Student` VALUES ('20201122','김춘추','010-1234-1002',3,'경남 경주시');
INSERT INTO `Student` VALUES ('20210213','장보고','010-1234-1003',2,'전남 완도군');
INSERT INTO `Student` VALUES ('20210324','강감찬','010-1234-1004',2,'서울 관악구');
INSERT INTO `Student` VALUES ('20220415','이순신','010-1234-1005',1,'서울 종로구');

INSERT INTO `Lecture` VALUES (101,'컴퓨터과학 개론',2,40,'본301');
INSERT INTO `Lecture` VALUES (102,'프로그래밍 언어',3,52,'본302');
INSERT INTO `Lecture` VALUES (103,'데이터베이스',3,56,'본303');
INSERT INTO `Lecture` VALUES (104,'자료구조',3,60,'본304');
INSERT INTO `Lecture` VALUES (105,'운영체제',3,52,'본305');

INSERT INTO `Register` SET `regStdNo` = '20220415', `regLecNo` = 101,`regMidScore`=60,`regFinalScore`=30,`regTotalScore` =null,`regGrade`=null;
INSERT INTO `Register` SET `regStdNo` = '20210324', `regLecNo` = 103,`regMidScore`=54,`regFinalScore`=36,`regTotalScore` =null,`regGrade`=null;
INSERT INTO `Register` SET `regStdNo` = '20201011', `regLecNo` = 105,`regMidScore`=52,`regFinalScore`=28,`regTotalScore` =null,`regGrade`=null;
INSERT INTO `Register` SET `regStdNo` = '20220415', `regLecNo` = 102,`regMidScore`=38,`regFinalScore`=40,`regTotalScore` =null,`regGrade`=null;
INSERT INTO `Register` SET `regStdNo` = '20210324', `regLecNo` = 104,`regMidScore`=56,`regFinalScore`=32,`regTotalScore` =null,`regGrade`=null;
INSERT INTO `Register` SET `regStdNo` = '20210213', `regLecNo` = 103,`regMidScore`=48,`regFinalScore`=40,`regTotalScore` =null,`regGrade`=null;

#실습 6-9
SELECT `stdNo`,`stdName`,`stdHp`,`stdYear`
  FROM `Student`AS a LEFT JOIN `Register` AS b ON a.stdNo = b.regStdNo
  WHERE `regLecNo` IS NULL;
  
UPDATE `Register` SET `regTotalScore` = `regMidScore` + `regFinalScore`,
       `regGrade` =  CASE
					WHEN `regTotalScore` >= 90 THEN 'A'
					WHEN `regTotalScore` >= 80 THEN 'B'
					WHEN `regTotalScore` >= 70 THEN 'C'
					WHEN `regTotalScore` >= 60 THEN 'D'
                    ELSE 'F'
				END	;	
                
UPDATE `Register` SET
                 `regTotalScore` = `regMidScore` + `regFinalScore`,
                 `regGrade` = if(`regTotalScore` >= 90, 'A',
                              if(`regTotalScore` >= 80, 'B',
                              if(`regTotalScore` >= 70, 'C',
                              if(`regTotalScore` >= 60, 'D', 'F'))));                            
                              
select 
	`regStdNo`, 
    `regLecNo`, 
    `regMidScore`,
    `regFinalScore`,
    `regMidScore` + `regFinalScore` as `합`,
    case
		when (`regMidScore` + `regFinalScore` >= 90) then 'A'
		when (`regMidScore` + `regFinalScore` >= 80) then 'B'
		when (`regMidScore` + `regFinalScore` >= 70) then 'C'
		when (`regMidScore` + `regFinalScore` >= 60) then 'D'
	else 'F'
    end as `등급`
from `Register`;  

select 
	`stdNo`,
    `stdName`,
    `stdYear`,
    `lecName`,
    `regMidScore`,
    `regFinalScore`,
    `regTotalScore`,
    `regGrade`
from `Student` as a
join `Register` as b on a.stdNo = b.regStdNo
join `Lecture` as c on b.regLecNo = c.lecNo
where `stdYear` = 2;