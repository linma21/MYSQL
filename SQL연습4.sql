#날짜 : 24/01/11
#이름 : 최이진
#내용 : SQL 연습문제4
USE chlvldzmf;

#실습 4-2
CREATE TABLE `Customer`(
  `custId`   INT PRIMARY KEY AUTO_INCREMENT,
  `name`     VARCHAR(10) NOT NULL,
  `address`  VARCHAR(20),
  `phone`    CHAR(13)
  );
  
CREATE TABLE `Product`(
  `bookId`    INT PRIMARY KEY,
  `bookName`  VARCHAR(20) NOT NULL,
  `publisher` VARCHAR(20) NOT NULL,
  `price`     INT
  );
  
CREATE TABLE `Order`(
  `orderId`    INT PRIMARY KEY AUTO_INCREMENT,
  `custId`     INT NOT NULL,
  `bookId`     INT NOT NULL,
  `salePrice`  INT NOT NULL,
  `orderDate`  CHAR(10)
  );
 DROP TABLE `Product`; 
#실습 4-3
INSERT INTO `Customer`(`name`,`address`,`phone`) VALUES ('박지성','영국 맨체스타','000-5000-0001');
INSERT INTO `Customer`(`name`,`address`,`phone`) VALUES ('김연아','대한민국 서울','000-6000-0001');
INSERT INTO `Customer`(`name`,`address`,`phone`) VALUES ('장미란','대한민국 강원도','000-7000-0001');
INSERT INTO `Customer`(`name`,`address`,`phone`) VALUES ('추신수','미국 클리블랜드','000-8000-0001');
INSERT INTO `Customer`(`name`,`address`,`phone`) VALUES ('박세리','대한민국 대전',null);

INSERT INTO `Product` VALUES (1,'축구의 역사','굿스포츠',7000);
INSERT INTO `Product` VALUES (2,'축구아는 여자','나무수',13000);
INSERT INTO `Product` VALUES (3,'축구의 이해','대한미디어',22000);
INSERT INTO `Product` VALUES (4,'골프 바이블','대한미디어',35000);
INSERT INTO `Product` VALUES (5,'피겨 교본','굿스포츠',8000);
INSERT INTO `Product` VALUES (6,'역도 단계별 기술','굿스포츠',6000);
INSERT INTO `Product` VALUES (7,'야구의 추억','이상미디어',20000);
INSERT INTO `Product` VALUES (8,'야구를 부탁해','이상미디어',13000);
INSERT INTO `Product` VALUES (9,'올림픽 이야기','삼성당',7500);
INSERT INTO `Product` VALUES (10,'Olympic Champions','Pearson',13000);

INSERT INTO `Order` (`custId`,`bookId`,`saleprice`,`orderdate`) VALUES (1,1,6000,'2014-07-01');
INSERT INTO `Order` (`custId`,`bookId`,`saleprice`,`orderdate`) VALUES (1,3,21000,'2014-07-03');
INSERT INTO `Order` (`custId`,`bookId`,`saleprice`,`orderdate`) VALUES (2,5,8000,'2014-07-03');
INSERT INTO `Order` (`custId`,`bookId`,`saleprice`,`orderdate`) VALUES (3,6,6000,'2014-07-04');
INSERT INTO `Order` (`custId`,`bookId`,`saleprice`,`orderdate`) VALUES (4,7,20000,'2014-07-05');
INSERT INTO `Order` (`custId`,`bookId`,`saleprice`,`orderdate`) VALUES (1,2,12000,'2014-07-07');
INSERT INTO `Order` (`custId`,`bookId`,`saleprice`,`orderdate`) VALUES (4,8,13000,'2014-07-07');
INSERT INTO `Order` (`custId`,`bookId`,`saleprice`,`orderdate`) VALUES (3,10,12000,'2014-07-08');
INSERT INTO `Order` (`custId`,`bookId`,`saleprice`,`orderdate`) VALUES (2,10,7000,'2014-07-09');
INSERT INTO `Order` (`custId`,`bookId`,`saleprice`,`orderdate`) VALUES (3,8,13000,'2014-07-10');

#실습 4-4
SELECT `custId`,`name`,`address` FROM `Customer`;

#실습 4-5
SELECT `bookname`,`price` FROM `Product`;

#실습 4-6
SELECT `price`, `bookname` FROM `product`;

#실습 4-7
SELECT * FROM `Product`;

#실습 4-8
SELECT `publisher` FROM `Product`;

#실습 4-9
SELECT DISTINCT `publisher` FROM `Product`;

#실습 4-10
SELECT * FROM `Product` WHERE `price` >= 20000;

#실습 4-11
SELECT * FROM `Product`WHERE `price` < 20000;

#실습 4-12
SELECT * FROM `product` WHERE `price` >= 10000 AND `price` <= 20000;

#실습 4-13
SELECT `bookId`,`bookname`,`price` FROM `Product` WHERE `price` >= 15000 AND `price` <= 30000;

#실습 4-14
SELECT * FROM `product` WHERE `bookId` IN (2,3,5);

#실습 4-15
SELECT * FROM `Product` WHERE `bookId` % 2 = 0;

#실습 4-16
SELECT * FROM `customer` WHERE `name` LIKE '박%';

#실습 4-17
SELECT * FROM `Customer` WHERE `address` LIKE '대한민국%';

#실습 4-18
SELECT * FROM `Customer` WHERE `phone` != 'null';

#실습 4-19
SELECT * FROM `Product` WHERE `publisher` IN ('굿스포츠','대한미디어');

#실습 4-20
SELECT `publisher` FROM `Product` WHERE `bookname` LIKE '축구의 역사';

#실습 4-21
SELECT `publisher` FROM `Product` WHERE `bookname` LIKE '%축구%';

#실습 4-22
SELECT * FROM `Product` WHERE `bookname` LIKE '_구%';

#실습 4-23
SELECT * FROM `Product` WHERE `price` >= 20000 AND  `bookname` LIKE '%축구%';

#실습 4-24
SELECT * FROM `Product` ORDER BY `bookname`;

#실습 4-25
SELECT * FROM `product` ORDER BY `price`, `bookname`;

#실습 4-26
SELECT * FROM `Product` ORDER BY `price` DESC, `publisher`;

#실습 4-27
SELECT * FROM `Product` ORDER BY `price` DESC  LIMIT 3;

#실습 4-28 
SELECT * FROM `product` ORDER BY `price` LIMIT 3;

#실습 4-29
SELECT SUM(`saleprice`) AS `총판매액` FROM `order`;

#실습 4-30
SELECT SUM(saleprice) `총판매액`,
      AVG(saleprice) `평균값`,
      MIN(saleprice) `최저가`,
      MAX(saleprice) `최고가` FROM `order`;

#실습 4-31
SELECT COUNT(*) AS '판매건수' FROM `order`;

#실습 4-32  풀이
SELECT 
   `bookId`,
   REPLACE(`bookname`,'야구','농구') AS `bookName`,
   `publisher`,
   `price`
   FROM `Product`;
   

 # 실습 4-32 ?
UPDATE `Product` SET `bookname` = 
   REPLACE(`bookname`,'야구','농구');

#실습 4-33
SELECT `custId` , COUNT(`custId`) AS `수량`
  FROM `Order` WHERE `saleprice`>= 8000 
  GROUP BY `custId` HAVING `수량` >= 2;

#실습 4-34
SELECT * FROM `Customer` AS a
    JOIN `order` AS b ON a.custId = b.custId;

SELECT * FROM `Customer` JOIN `order` Using (`custId`);

SELECT * FROM `Customer` AS a, `order` AS b
     WHERE a.`custId` = b.`custId`;

#실습 4-35 
SELECT * FROM `Customer` AS a
    JOIN `order` AS b ON a.custId = b.custId ORDER BY a.`custId`;

#실습 4-36
SELECT `name`,`salePrice` FROM `Customer` AS a
    JOIN `order` AS b ON a.custId = b.custId ORDER BY a.`custId`;

#실습 4-37
SELECT `name`, SUM(saleprice) FROM `Customer` AS a
    JOIN `order` AS b ON a.custId = b.custId GROUP BY `name` ORDER BY `name`;

#실습 4-38
SELECT `name`,`bookname` FROM `Customer` AS a
    JOIN `order` AS b  ON a.custId = b.custId
    JOIN `Product` AS c ON b.bookId = c.bookId
    ORDER BY a.`custId` ;

#실습 4-39
SELECT `name`,`bookname` FROM `Customer` AS a
    JOIN `order` AS b  ON a.custId = b.custId
    JOIN `Product` AS c ON b.bookId = c.bookId
    WHERE `saleprice`=20000 ;

#실습 4-40
SELECT `name`,`saleprice` FROM `Customer` AS a
    LEFT JOIN `order` AS b  ON a.custId = b.custId
    LEFT JOIN `Product` AS c ON b.bookId = c.bookId
    ORDER BY a.`custId` ;

#실습 4-41
SELECT SUM(`saleprice`) AS `총매출` FROM `Customer` AS a
    JOIN `order` AS b  ON a.custId = b.custId
    JOIN `Product` AS c ON b.bookId = c.bookId
    WHERE `name` = '김연아';
    
SELECT SUM(`saleprice`) AS `총매출` FROM `Order` WHERE `custId`=(SELECT `custId` FROM`Customer` WHERE `name` = '김연아');
    

#실습 4-42
SELECT `bookName` FROM `Product` ORDER BY `price` DESC LIMIT 1;
SELECT `bookName` FROM `Product` WHERE `price`=(SELECT MAX(`price`) FROM `Book`);

#실습 4-43
SELECT `name` FROM `Customer` AS a
    LEFT JOIN `order` AS b  ON a.custId = b.custId
    LEFT JOIN `Product` AS c ON b.bookId = c.bookId
    WHERE `saleprice` IS NULL;
    
SELECT `name` FROM `Customer` AS a 
LEFT JOIN `Order` AS b ON a.custId = b.custId
WHERE `orderId` IS NULL;
    
    
SELECT `name` FROM `customer` WHERE `custId` NOT IN (SELECT DISTINCT `custId` FROM `Order`);    

#실습 4-44
INSERT INTO `Product` VALUES (11,'스포츠 의학','한솔의학서적',null);

#실습 4-45
UPDATE `Customer` SET `address` = '대한민국 부산' WHERE `custId`=5;

#실습 4-46
DELETE FROM `Customer` WHERE `custId` = 5; 