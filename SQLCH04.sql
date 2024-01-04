# 날짜 : 24.01.04
# 이름 : 최이진
# 내용 : 4장 SQL 고급
# 실습 4-1
 CREATE TABLE `Member` (
    `uid`     VARCHAR(10) primary key,
	`name`    VARCHAR(10) NOT NULL,
	`hp`      CHAR(13) unique NOT NULL,
    `pos`     VARCHAR(10) DEFAULT '사원'  NOT NULL,
    `dep`     INT DEFAULT NULL,
    `rdate`   CHAR(19) NOT NULL
    );
    
    DROP TABLE member;
CREATE TABLE `Department`(
    `depNo`  INT primary KEY,
    `name`   VARCHAR(10) NOT NULL,
    `tel`    varchar(12) NOT NULL
    );
    DROP TABLE Department;
CREATE TABLE `sales`(
    `seq` INT primary KEY auto_increment,
    `uid` varchar(10) NOT NULL,
    `year` CHAR(13) NOT NULL,
    `month` INT NOT null,
    `sale` INT NOT NULL
    );
DROP TABLE sales;
# 실습 4-2
INSERT INTO `Member` VALUES ('a101','박혁거세','010-1234-1001','부장','101','2020-11-19 11:39:48');
INSERT INTO `Member` VALUES ('a102','김유신','010-1234-1002','차장','102','2020-11-19 11:39:48');
INSERT INTO `Member` VALUES ('a103','김춘추','010-1234-1003','사원','103','2020-11-19 11:39:48');
INSERT INTO `Member` VALUES ('a104','장보고','010-1234-1004','대리','104','2020-11-19 11:39:48');
INSERT INTO `Member` VALUES ('a105','강감찬','010-1234-1005','과장','105','2020-11-19 11:39:48');
INSERT INTO `Member` VALUES ('a106','이성계','010-1234-1006','차장','106','2020-11-19 11:39:48');
INSERT INTO `Member` VALUES ('a107','정철','010-1234-1007','차장','107','2020-11-19 11:39:48');
INSERT INTO `Member` VALUES ('a108','이순신','010-1234-1008','부장','108','2020-11-19 11:39:48');
INSERT INTO `Member` VALUES ('a109','허균','010-1234-1009','부장','109','2020-11-19 11:39:48');
INSERT INTO `Member` VALUES ('a110','정약용','010-1234-1010','사원','110','2020-11-19 11:39:48');
INSERT INTO `Member` VALUES ('a111','박지원','010-1234-1011','사원','111','2020-11-19 11:39:48');

INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a101','2018','1',98100);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a102','2018','1',136000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a103','2018','1',80100);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a104','2018','1',78000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a105','2018','1',93000);

INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a101','2018','2',93500);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a102','2018','2',126000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a103','2018','2',18500);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a105','2018','2',19000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a106','2018','2',53000);

INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a101','2019','1',24000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a102','2019','1',109000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a103','2019','1',101000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a104','2019','1',53500);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a107','2019','1',24000);

INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a102','2019','2',160000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a103','2019','2',101000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a104','2019','2',53500);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a105','2019','2',24000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a106','2019','2',109000);

INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a102','2020','1',201000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a104','2020','1',63000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a105','2020','1',74000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a106','2020','1',122000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a107','2020','1',111000);

INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a102','2020','2',120000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a103','2020','2',93000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a104','2020','2',84000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a105','2020','2',180000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a108','2020','2',76000);

INSERT INTO `Department` VALUES ('101','영업1부','051-512-1001');
INSERT INTO `Department` VALUES ('102','영업2부','051-512-1002');
INSERT INTO `Department` VALUES ('103','영업3부','051-512-1003');
INSERT INTO `Department` VALUES ('104','영업4부','051-512-1004');
INSERT INTO `Department` VALUES ('105','영업5부','051-512-1005');
INSERT INTO `Department` VALUES ('106','영업지원부','051-512-1006');
INSERT INTO `Department` VALUES ('107','인사부','051-512-1007');

# 실습 4-3

SELECT * FROM `Member` WHERE `name` = '김유신';
SELECT * FROM `Member` WHERE `pos` = '차장' AND dep=101;
SELECT * FROM `Member` WHERE `pos` = '차장' OR dep = 101;
SELECT * FROM `Member` WHERE `name` != '김춘추';
SELECT * FROM `Member` WHERE `name` <> '김춘추';
SELECT * FROM `Member` WHERE `pos` = '사원' OR `pos`='대리';
SELECT * FROM `Member` WHERE `pos` IN ('사원','대리');
SELECT * FROM `Member` WHERE `dep` IN(101, 102 ,103);
SELECT * FROM `Member` WHERE `name` LIKE '%신';
SELECT * FROM `Member` WHERE `name` LIKE '김%';
SELECT * FROM `Member` WHERE `name` LIKE '박%';
SELECT * FROM `Member` WHERE `name` LIKE '허%';
SELECT * FROM `Member` WHERE `name` LIKE '김__';
SELECT * FROM `Member` WHERE `name` LIKE '_성_';
SELECT * FROM `Member` WHERE `name` LIKE '정_';
SELECT * FROM `sales` WHERE `sale` > 50000;
SELECT * FROM `sales` WHERE `sale` >= 50000 AND `sale` < 100000 AND `month`=1;
SELECT * FROM `sales` WHERE `sale` BETWEEN 50000 AND 100000;
SELECT * FROM `sales` WHERE `sale` NOT BETWEEN 50000 AND 100000;
SELECT * FROM `sales` WHERE `year` IN(2020);
SELECT * FROM `sales` WHERE `month` IN(1, 2);

# 실습 4-4

SELECT * FROM `sales` ORDER BY `sale`;
SELECT * FROM `sales` ORDER BY `sale` ASC;
SELECT * FROM `sales` ORDER BY `sale` DESC;
SELECT * FROM `member` ORDER BY `name`;
SELECT * FROM `member` ORDER BY `name`DESC;
SELECT * FROM `member` ORDER BY `rdate` ASC;
SELECT * FROM `sales` WHERE `sale` > 50000 ORDER BY `sale` DESC;
SELECT * FROM `sales`
WHERE `sale` > 50000
ORDER BY `year`, `month`,`sale` DESC;

# 실습 4-5

SELECT * FROM Sales LIMIT 3;
SELECT * FROM Sales LIMIT 0, 3;
SELECT * FROM Sales LIMIT 1, 2;
SELECT * FROM Sales LIMIT 5, 3;
SELECT * FROM Sales ORDER BY `sale` DESC LIMIT 3, 5;
SELECT * FROM Sales WHERE `sale` < 50000 ORDER BY `sale` DESC LIMIT 3;
SELECT * FROM Sales
WHERE `sale` < 50000
ORDER BY `year` DESC, `month`, `sale` DESC
LIMIT 5;

# 실습 4-6
SELECT SUM(sale) AS `합계` FROM `sales`;
SELECT AVG(sale) AS `평균` FROM `sales`;
SELECT MAX(sale) AS `최대값` FROM `sales`;
SELECT MIN(sale) AS `최소값` FROM `sales`;
SELECT CEILING(1.2);
SELECT CEILING(1.8);
SELECT FLOOR(1.2);
SELECT FLOOR(1.8);
SELECT ROUND(1.2);
SELECT ROUND(1.8);
SELECT RAND();
SELECT CEILING (RAND() *10);
SELECT COUNT(sale) AS `갯수` FROM `sales`;
SELECT COUNT(*) AS `갯수` FROM `sales`;

SELECT LEFT('HelloWorld',5);
SELECT RIGHT('HelloWorld',5);
SELECT SUBSTRING('HelloWorld',6,5);
SELECT CONCAT ('Hello','World');
SELECT CONCAT(`uid`,`name`,`hp`)FROM `member`WHERE `uid` = 'a108';

SELECT CURDATE();
SELECT CURTIME();
SELECT NOW();
INSERT INTO `member` VALUES ('a112','유관순','010-124-1012','대리',107,NOW());

# 실습 4-7. 2018년 1월 매출의 총합을 구하시오.

SELECT SUM(sale) AS '합계' FROM `sales` WHERE `year`='2018' AND `month` = '1';

# 실습 4-8. 2019년 2월에 5만원 이상 매출에 대한 총합과 평균을 구하시오.

SELECT SUM(sale) AS '합계' FROM `sales` WHERE `year`='2019' AND `month` = '2' AND `sale` > 50000;

# 실습 4-9. 2020년 전체 매출 가운데 최저, 최고, 매출을 구하시오.

#실습 4-10
	SELECT * FROM `Sales` GROUP BY `uid`;
    SELECT * FROM `Sales` GROUP BY `year`;
    SELECT * FROM `Sales` GROUP BY `uid`,`year`;
    SELECT `UID`, COUNT(*) FROM `SALES` GROUP BY `UID`;
    SELECT `uid`, COUNT(*) AS `건수` FROM `Sales` GROUP BY `uid`;
    SELECT `uid`, SUM(sale) AS `합계` FROM `Sales` GROUP BY `uid`;
    SELECT `YEAR`, SUM(SALE) AS `연매출`FROM `SALES` GROUP BY `YEAR`;
    SELECT `uid`, AVG(sale) AS `평균` FROM `	sales` GROUP BY `uid`;
    
	SELECT `UID`, `year`, SUM(sale) AS `합계`
    FROM `Sales`
    GROUP BY `uid`,`year`;
    
    SELECT `uid`,`year`,SUM(sale) AS `합계`
    FROM `Sales`
    GROUP BY `uid`,`year`
    ORDER BY `year`ASC,`합계`DESC;
    
    SELECT `uid`, `year`, SUM(sale) AS `합계`
    FROM `sales`
    WHERE `sale` >= 50000
    GROUP BY `uid`,`year`
    ORDER BY `합계` DESC;
    
    #실습 4-11
    SELECT `UID`,SUM(SALE) AS `합계` FROM `SALES`
	GROUP BY `UID`
    HAVING `합계` >= 200000;
    
    SELECT `UID`,`YEAR`,SUM(SALE) AS `합계`
    FROM `SALES`
    WHERE `SALE` >= 100000
    GROUP BY `UID`,`YEAR`
    HAVING `합계` >= 200000
    ORDER BY `합계` DESC;
    
    #실습 4-12
    CREATE TABLE `SALES2` LIKE `Sales`;
    INSERT INTO `SALES2` SELECT *FROM `Sales`;
    UPDATE `Sales2` SET `year` = `year` + 3;
    
    SELECT *FROM `Sales` UNION SELECT *FROM `Sales2`;
    SELECT *FROM `Sales` WHERE `sale` >= 100000
    UNION
    SELECT * FROM `SALES2`WHERE`sale` >= 100000;
    
    SELECT `UID`,`YEAR`,`SALE` FROM SALES
    UNION
    SELECT `UID`,`YEAR`,`SALE` FROM SALES2;
    
    SELECT `uid`,`year`,SUM(sale) AS `합계`
    FROM `SALES`
    GROUP BY `uid`,`year`
    UNION
    SELECT `uid`,`year`,SUM(SALE) AS `합계`
    FROM `SALES2`
    GROUP BY `UID`,`YEAR`
    ORDER BY `YEAR` ASC, `합계` DESC;

#실습 4-13
SELECT * FROM `sales` INNER JOIN `member` ON `sales`.uid = `member`.uid;
SELECT * FROM `member` INNER JOIN `department` ON `member`. dep = `department`.depNo;

SELECT * FROM `sales` AS a JOIN `member` AS b ON a.uid = b.uid; 
SELECT * FROM `member` AS a JOIN `Department` AS b ON a.dep = b.depNo;

SELECT *FROM `SALES` AS a, `member` AS b WHERE a.uid = b.uid;
SELECT * FROM `member` AS a ,`Department` AS b WHERE a.dep = b.depNo;

SELECT a.`seq`, a.`uid`, `sale`, `name`, `pos` FROM `Sales` AS a 
 JOIN `Member` AS b ON a.`uid` = b.`uid`;

SELECT a.`seq`,`uid`,`sale`,`name`,`pos`FROM `Sales` AS a 
JOIN `Member` AS b USING (uid);

SELECT a.`seq`, a.`uid`,`sale`,`name`,`pos` FROM `Sales` AS a
JOIN `Member` AS b ON a.`uid` = b.`uid`
WHERE `sale` >= 100000;

SELECT a.`seq`, a.`uid`,b.`name`,b.`pos`,`year`,SUM(`sale`) AS `합계` FROM `Sales` AS a
JOIN `Member` AS b ON a.uid = b.uid
GROUP BY a.`uid`, a .`year` HAVING `합계` >=100000
ORDER BY a.`year` ASC, `합계` DESC;

SELECT * FROM `Sales` AS a
JOIN `Member` AS b ON a.uid = b.uid
JOIN `Department` AS c ON b.dep = c.depNo;

SELECT * FROM `Sales` AS a INNER JOIN `Member` AS b ON a.uid = b.uid;
SELECT * FROM `Sales` AS a LEFT JOIN `Member` AS b ON a.uid = b.uid;
SELECT * FROM `Sales` AS a RIGHT JOIN `Member` AS b ON a.uid = b.uid;