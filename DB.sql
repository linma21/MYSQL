#날짜 : 2024/01/02
#이름 : 최이진
#내용 : 2장 SQL 기초

#실습 3-1
create TABLE `USER2` (
    `UID`    varchar(10) PRIMARY KEY,
    `NAME`   VARCHAR(10),
    `BIRTH`   char(10),
    `ADDR`   varchar(100)
    );
    DROP table USER2 ;
#실습 3-2
INSERT INTO `User2` VALUES ('A101', '김유신', '1968-05-09', '경남 김해시');
INSERT INTO `User2` VALUES ('A102', '김춘추', '1972-11-23', '경남 경주시');
INSERT INTO `User2` VALUES ('A103', '장보고', '1978-03-01', '전남 완도군');
INSERT INTO `User2` VALUES ('A104', '강감찬', '1978-08-16', '서울시 관악구');
INSERT INTO `User2` VALUES ('A105', '이순신', '1921-05-23', '부산시 진구');

#실습 3-3
create table `user3`(
  `cid`   varchar(10) primary key,
  `NAME`   VARCHAR(10),
  `BIRTH`   char(10),
  `hp`    char(13) unique,
  `ADDR`   varchar(100)
);

 DROP table USER3 ;
#실습 3-4
INSERT INTO `user3` VALUES ('P101','김유신','1968-05-09','010-1234-1111','경남 김해시');
INSERT INTO `user3` VALUES ('P102','김춘추','1972-11-23','010-1234-2222','경남 경주시');
INSERT INTO `user3` VALUES ('P103','장보고','1978-03-01','010-1234-3333','전남 완도시');
INSERT INTO `user3` VALUES ('P104','강감찬','1979-08-16','010-1234-4444','서울시 관악구');
INSERT INTO `user3` VALUES ('P105','이순신','1981-05-23','010-1234-5555','부산시 진구');

#실습 3-5
CREATE TABLE `Parent`(
   `pid`      VARCHAR(10) primary KEY,
   `name`     VARCHAR(10),
   `birth`    CHAR(13) UNIQUE,
   `addr`    VARCHAR(100)
);
DROP TABLE parent ;
#실습 3-6
CREATE TABLE `Child`(
   `cid`      VARCHAR(10) primary KEY,
   `name`     VARCHAR(10),
   `hp`    CHAR(13) UNIQUE,
   `Parent`     VARCHAR(100),
    FOREIGN KEY (`Parent`) REFERENCES `Parent` (`pid`)
);
DROP TABLE child;
INSERT INTO `Parent` VALUES ('P101','김유신','1979-08-16','서울시 관악구');
INSERT INTO `Parent` VALUES ('P102','김춘추','1981-05-23','부산시 진구');
INSERT INTO `Parent` VALUES ('P103','강감찬','1979-08-17','서울시 관악구');
INSERT INTO `Parent` VALUES ('P104','이순신','1981-05-28','부산시 진구');

INSERT INTO `Child` VALUES ('C101','김철수','010-1234-0001','서울시 관악구');
INSERT INTO `Child` VALUES ('C102','김영희','010-1234-1232','부산시 진구');
INSERT INTO `Child` VALUES ('C103','강철수','010-1234-0003','서울시 관악구');
INSERT INTO `Child` VALUES ('C104','이철수','010-1234-0004','부산시 진구');

#실습 3-7
CREATE TABLE `User4`(
    `uid`  varchar(10) primary key,
    `name` varchar(10) not null,
    `gender` char(1),
    `age`  int default 1,
    `hp`   char(13) unique,
    `addr` varchar(20)
) ;
DROP TABLE user4;
INSERT INTO `user4` VALUES ('A101','김유신','M','25','010-1234-0001','서울시 관악구');
INSERT INTO `user4` VALUES ('A102','김춘추','M','23','010-1234-2222','부산시 진구');
INSERT INTO `user4` VALUES ('A103','장보고','M','25','010-1234-2223','서울시 관악구');
INSERT INTO `user4` VALUES ('A104','강감찬','M','25','010-1234-2224','부산시 진구');
INSERT INTO `user4` (`uid`,`name`,`gender`,`hp`,`addr`)
                VALUES  ('A107','이순신','M','010-1234-9874','부산시 진구');
INSERT INTO `user4` VALUES ('A105',null,'M','1979-08-16','서울시 관악구');
INSERT INTO `user4` VALUES ('A106','신사임당','W','1981-05-23','부산시 진구');
INSERT INTO `user4` VALUES ('A107','허난설현','W','1979-08-17','서울시 관악구');

#실습 3-8
CREATE TABLE `User5` (
   `seq`  INT primary KEY auto_increment,
   `name` VARCHAR(10) NOT NULL,
   `gender` CHAR(1) CHECK (`gender` IN ('M','F')),
   `age`    INT DEFAULT 1 CHECK (`age` > 0 AND `age` < 100),
   `addr`   varchar(20)
);
drop TABLE user5;
INSERT INTO `User5` (`name`,`gender`,`age`,`addr`) VALUES ('김유신','M','25','경남 김해시');
INSERT INTO `User5` (`name`,`gender`,`age`,`addr`) VALUES ('김춘추','M','23','경남 경주시');
INSERT INTO `User5` (`name`,`gender`,`age`,`addr`) VALUES ('장보고','M','35','전남 완도시');
INSERT INTO `User5` (`name`,`gender`,`age`,`addr`) VALUES ('강감찬','M','42','서울시 관악구');
INSERT INTO `User5` (`name`,`gender`,`age`,`addr`) VALUES ('이순신','M','51','부산시');
INSERT INTO `User5` (`name`,`gender`,`age`,`addr`) VALUES ('심사임당','W','-1','강릉시');

#실습 3-9
#실습 3-10