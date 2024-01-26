# 날짜 : 24/01/18
# 이름 : 최이진
# 내용 : 7장 정규화 실습

#비정규형 테이블
CREATE 	table `bookorder` (
	`orderNo`   int,
    `orderDate` date,
    `orderId`	varchar(10),
    `orderName`	varchar(10),
    `orderAddr`	varchar(50),
    `bookNo`	int,
    `bookName`	varchar(20),
    `count`		int,		
    `price`		int
    );
    
insert into `bookorder` values (10001,NOW(),'a101','김유신','김해',101,'프로그래밍',1,28000);
insert into `bookorder` values (10002,NOW(),'a102','김춘추','경주',101,'프로그래밍',1,28000);
insert into `bookorder` values (10002,NOW(),'a102','김춘추','경주',102,'자료구조',2,32000);
insert into `bookorder` values (10003,NOW(),'a103','장보고','완도',102,'자료구조',2,32000);
insert into `bookorder` values (10004,NOW(),'a104','강감찬','서울',110,'데이터베이스',1,25000);
insert into `bookorder` values (10005,NOW(),'a105','이순신','서울',110,'데이터베이스',1,25000);
insert into `bookorder` values (10005,NOW(),'a105','이순신','서울',102,'자료구조',1,16000);

INSERT INTO `User` 	values ('a101','김유신','김해');
INSERT INTO `User` 	values ('a102','김춘추','경주');
INSERT INTO `User` 	values ('a103','장보고','완도');
INSERT INTO `User` 	values ('a104','강감찬','서울');
INSERT INTO `User` 	values ('a105','이순신','서울');

insert into `UserOrder` VALUES (10001,NOW(),'a101');
insert into `UserOrder` VALUES (10002,NOW(),'a102');
insert into `UserOrder` VALUES (10003,NOW(),'a103');
insert into `UserOrder` VALUES (10004,NOW(),'a104');
insert into `UserOrder` VALUES (10005,NOW(),'a105');

INSERT INTO `Book` VALUES (101,'프로그래밍');
INSERT INTO `Book` VALUES (102,'자료구조');
INSERT INTO `Book` VALUES (110,'데이터베이스');

INSERT INTO `Order` VALUES (10001,101,1,28000);
INSERT INTO `Order` VALUES (10002,101,1,28000);
INSERT INTO `Order` VALUES (10002,102,2,32000);
INSERT INTO `Order` VALUES (10003,102,2,32000);
INSERT INTO `Order` VALUES (10004,110,1,25000);
INSERT INTO `Order` VALUES (10005,110,1,25000);
INSERT INTO `Order` VALUES (10005,102,1,16000);

select 
	c.orderNo,orderDate,a.userNo,userName,userAddr,d.bookNo,bookName,count,price
    from `user` AS a JOIN `userOrder` AS b
	ON a.userNo = b.userNo
    JOIN `order` AS c ON b.orderNo = c.orderNo
    JOIN `Book` AS d ON c.bookNo = d.bookNo;

