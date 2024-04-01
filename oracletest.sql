CREATE TABLE CARD (
	CARD_NO				CHAR(14) PRIMARY KEY,
	CARD_REGISTER_DATE	DATE,
	CARD_LIMIT_MONEY	INT,
	CARD_APPROVE_DATE	DATE,
	CARD_TYPE			VARCHAR(10) NOT NULL,
	CUST_JUMIN			VARCHAR(20),
	ADD_ID				CHAR(14)
);
CREATE TABLE ACCOUNT(
    ACC_ID              CHAR(14) PRIMARY KEY,
    ACC_TYPE            VARCHAR(20) NOT NULL,
    ACC_BALANCE         INT NOT NULL,
    ACC_CARD            CHAR(1) NOT NULL,
    ACC_REGISTER_RDATE  DATETIME,
    CUST_JUMON          VARCHAR(20)
);

CREATE TABLE `TRANSACTION` (
    TRANS_ID        INT AUTO_INCREMENT PRIMARY KEY,
    TRANS_ACC_ID    CHAR(14),
    TRANS_TYPE      VARCHAR(20),
    TRANS_MESSAGE   VARCHAR(50),
    TRANC_MONEY     INT,
    TRANS_DATE      DATE
);
use chlvldzmf;
create table CUSTOMER (
	CUST_JUMIN	VARCHAR(20) primary key,
	CUST_NAME	VARCHAR(20)	not NULL,
	CUST_ADDR	VARCHAR(100) not null,
	CUST_BIRTH	DATE,
	CUST_EMAIL	VARCHAR(50) unique,
	CUST_PHNUM	VARCHAR(25) not null,
	CUST_JOB	VARCHAR(30)
);

insert into CUSTOMER values ('760121-1234567','정우성','서울','1976-01-21',null,'010-1101-7601','배우');

insert into CUSTOMER values ('750611-1234567','이정재','서울','1975-06-11',null,'010-1102-7506','배우'); 
insert into CUSTOMER (CUST_JUMIN, CUST_NAME, CUST_ADDR, CUST_BIRTH, CUST_EMAIL, CUST_PHNUM, CUST_JOB) values ('890530-1234567','전지현','대전','1989-05-30','jjh@naver.com','010-1103-8905','자영업'); 
insert into CUSTOMER (CUST_JUMIN, CUST_NAME, CUST_ADDR, CUST_BIRTH, CUST_EMAIL, CUST_PHNUM, CUST_JOB) values ('790413-1234567','이나영','대전','1979-04-13','lee@naver.com','010-2101-7904','회사원'); 
INSERT INTO CUSTOMER (CUST_JUMIN, CUST_NAME, CUST_ADDR, CUST_BIRTH, CUST_EMAIL, CUST_PHNUM, CUST_JOB) 
VALUES ('660912-1234567', '원빈', '대전', '1966-09-12', 'one@daum.net', '010-2104-6609', '배우');
 
insert into CUSTOMER (CUST_JUMIN, CUST_NAME, CUST_ADDR, CUST_BIRTH, CUST_EMAIL, CUST_PHNUM, CUST_JOB) values ('790728-1234567','장동건','대구','1979-07-28','jang@naver.com','010-3101-7907','배우'); 
insert into CUSTOMER (CUST_JUMIN, CUST_NAME, CUST_ADDR, CUST_BIRTH, CUST_EMAIL, CUST_PHNUM, CUST_JOB) values ('840615-1234567','고소영','대구','1984-06-15','goso@daum.net','010-4101-8406','회사원'); 
insert into CUSTOMER (CUST_JUMIN, CUST_NAME, CUST_ADDR, CUST_BIRTH, CUST_EMAIL, CUST_PHNUM, CUST_JOB) values ('651021-1234567','김연아','대구','1965-10-21','yuna@daum.net','010-5101-6510','운동선수'); 
insert into CUSTOMER (CUST_JUMIN, CUST_NAME, CUST_ADDR, CUST_BIRTH, CUST_EMAIL, CUST_PHNUM, CUST_JOB) values ('721128-1234567','유재석','부산','1972-11-28',null,'010-6101-7211','개그맨'); 
insert into CUSTOMER (CUST_JUMIN, CUST_NAME, CUST_ADDR, CUST_BIRTH, CUST_EMAIL, CUST_PHNUM, CUST_JOB) values ('920907-1234567','강호동','부산','1992-09-07',null,'010-7103-9209','개그맨');
insert into CUSTOMER (CUST_JUMIN, CUST_NAME, CUST_ADDR, CUST_BIRTH, CUST_EMAIL, CUST_PHNUM, CUST_JOB) values ('891209-1234567','조인성','광주','1989-12-09','join@google.com','010-7104-8912','배우'); 
insert into CUSTOMER (CUST_JUMIN, CUST_NAME, CUST_ADDR, CUST_BIRTH, CUST_EMAIL, CUST_PHNUM, CUST_JOB) values ('770314-1234567','강동원','광주','1977-03-14','dong@naver.com','010-8101-7703','배우');

insert into `ACCOUNT` values ('1011-1001-1001','760121-1234567','자유입출금','41600000','Y',NOW());

insert into `ACCOUNT` values ('1011-1001-1002','790413-1234567','자유입출금','376000','Y',NOW());
insert into `ACCOUNT` values ('1011-1001-1003','660912-1234567','자유입출금','1200000','Y',NOW());
insert into `ACCOUNT` values ('1011-1001-1004','840615-1234567','정기적금','1000000','N',NOW());
insert into `ACCOUNT` values ('1011-1001-1005','651021-1234567','자유입출금','820000','Y',NOW());
insert into `ACCOUNT` values ('1011-1001-1006','721128-1234567','자유입출금','3520000','Y',NOW());
insert into `ACCOUNT` values ('1011-1001-1007','920907-1234567','자유입출금','7620500','Y',NOW());
insert into `ACCOUNT` values ('1011-1001-1008','891209-1234567','정기적금','6400000','N',NOW());
insert into `ACCOUNT` values ('1011-1001-1009','770314-1234567','자유입출금','1763000','Y',NOW());
insert into `ACCOUNT` values ('1011-1001-1010','760121-1234567','정기적금','1080000','N',NOW());

insert into CARD values ('2111-1001-1001','760121-1234567','1011-1001-1001','2020-01-21',1000000,'2020-02-10','check');

insert into CARD values ('2041-1001-1002','890530-1234567','1011-1001-1002','2020-06-11',3000000,'2020-06-15','check');
insert into CARD values ('2011-1001-1003','790413-1234567','1011-1001-1003','2020-05-30',5000000,'2020-06-25','check');
insert into CARD values ('2711-1001-1004','660912-1234567',null,'2020-04-13',1000000,'2020-05-10','credit');
insert into CARD values ('2611-1001-1005','840615-1234567','1011-1001-1005','2020-09-12',1500000,'2020-10-10','check');
insert into CARD values ('2781-1001-1006','651021-1234567','1011-1001-1006','2020-07-28',10000000,'2020-08-15','check');
insert into CARD values ('2345-1001-1007','721128-1234567','1011-1001-1007','2020-06-15',2000000,'2020-07-25','check');
insert into CARD values ('2221-1001-1008','920907-1234567',null,'2020-10-21',5000000,'2020-11-15','credit');
insert into CARD values ('2144-1001-1009','891209-1234567','1011-1001-1009','2020-11-28',1000000,'2020-12-10','credit');
insert into CARD values ('2789-1001-1010','770314-1234567',null,'2020-09-07',1000000,'2020-10-10','credit');

insert into `TRANSACTION` (trans_acc_id,trans_type,trans_message,trans_money,trans_date) VALUES ('1011-1001-1002','입금','2월 정기급여',35000000,NOW());

insert into `TRANSACTION` (trans_acc_id,trans_type,trans_message,trans_money,trans_date) VALUES ('1011-1001-1003','출금','ATM 출금',300000,NOW());
insert into `TRANSACTION` (trans_acc_id,trans_type,trans_message,trans_money,trans_date) VALUES ('1011-1001-1002','입금','2월 급여',2800000,NOW());
insert into `TRANSACTION` (trans_acc_id,trans_type,trans_message,trans_money,trans_date) VALUES ('1011-1001-1007','출금','2월 공과금',116200,NOW());
insert into `TRANSACTION` (trans_acc_id,trans_type,trans_message,trans_money,trans_date) VALUES ('1011-1001-1005','출금','ATM 출금',50000,NOW());
insert into `TRANSACTION` (trans_acc_id,trans_type,trans_message,trans_money,trans_date) VALUES ('1011-1001-1007','입금','홍길동 이체',400000,NOW());
insert into `TRANSACTION` (trans_acc_id,trans_type,trans_message,trans_money,trans_date) VALUES ('1011-1001-1007','출금','2월 관리비',145000,NOW());
insert into `TRANSACTION` (trans_acc_id,trans_type,trans_message,trans_money,trans_date) VALUES ('1011-1001-1002','입금','홍길동 입금',200000,NOW());
insert into `TRANSACTION` (trans_acc_id,trans_type,trans_message,trans_money,trans_date) VALUES ('1011-1001-1009','입금','연말정산 환급',112000,NOW());
insert into `TRANSACTION` (trans_acc_id,trans_type,trans_message,trans_money,trans_date) VALUES ('1011-1001-1006','출금','ATM 출금',30000,NOW());

-- 고객 테이블을 조회하시오
SELECT * FROM Customer;
-- 카드 테이블을 조회하시오
SELECT * FROM card;
