INSERT INTO shop_customer (`custId`,`name`,`age`,`hp`,`addr`,`regDate`) VALUES ('a101', '김유신', 23, '010-1234-1001', '서울', NOW());
INSERT INTO shop_customer (`custId`,`name`,`age`,`hp`,`addr`,`regDate`)  VALUES ('a102', '김춘추', 21, '010-1234-1002', '대전', NOW());
INSERT INTO shop_customer (`custId`,`name`,`age`,`hp`,`addr`,`regDate`)  VALUES ('a103', '장보고', 31, '010-1234-1003', '대구', NOW());
INSERT INTO shop_customer (`custId`,`name`,`age`,`hp`,`addr`,`regDate`)  VALUES ('a104', '강감찬', 41, '010-1234-1004', '부산', NOW());
INSERT INTO shop_customer (`custId`,`name`,`age`,`hp`,`addr`,`regDate`)  VALUES ('a105', '이순신', 51, '010-1234-1005', '광주', NOW());

INSERT INTO shop_product (`productName`, `price`, `stock`) VALUES ('키보드', 35000, 100);
INSERT INTO shop_product (`productName`, `price`, `stock`) VALUES ('마우스', 15000, 100);
INSERT INTO shop_product (`productName`, `price`, `stock`) VALUES ('노트북', 1200000, 100);
INSERT INTO shop_product (`productName`, `price`, `stock`) VALUES ('휴대폰', 800000, 100);
INSERT INTO shop_product (`productName`, `price`, `stock`) VALUES ('모니터', 235000, 100);

INSERT INTO shop_order (`orderer`, `orderDate`, `orderPrice`, `orderStatus`) VALUES ('a101', NOW(), 15000, 1);
INSERT INTO shop_order (`orderer`, `orderDate`, `orderPrice`, `orderStatus`) VALUES ('a102', NOW(), 35000, 1);
INSERT INTO shop_order (`orderer`, `orderDate`, `orderPrice`, `orderStatus`) VALUES ('a103', NOW(), 800000, 1);
INSERT INTO shop_order (`orderer`, `orderDate`, `orderPrice`, `orderStatus`) VALUES ('a105', NOW(), 235000, 1);
INSERT INTO shop_order (`orderer`, `orderDate`, `orderPrice`, `orderStatus`) VALUES ('a102', NOW(), 35000, 1);

INSERT INTO shop_order_item (`orderId`, `productId`, `count`) VALUES (1, 2, 3);
INSERT INTO shop_order_item (`orderId`, `productId`, `count`) VALUES (2, 1, 2);
INSERT INTO shop_order_item (`orderId`, `productId`,  `count`) VALUES (3, 4, 1);
INSERT INTO shop_order_item (`orderId`, `productId`,  `count`) VALUES (4, 5, 1);
INSERT INTO shop_order_item (`orderId`, `productId`,  `count`) VALUES (3, 1, 1);
INSERT INTO shop_order_item (`orderId`, `productId`,  `count`) VALUES (5, 2, 2);