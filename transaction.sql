# 날짜 : 24/01/18
# 이름 : 최이진
# 내용 : 8장 트랜잭션과 병행 제어

# 실습 8-1
#--트랜잭션 시작
START TRANSACTION;

SELECT * FROM `bank_account`;
UPDATE `bank_account` SET `a_balance` = `a_balance` - 10000
	WHERE `a_no` = '101-11-1001';
    
UPDATE `bank_account` SET `a_balance` = `a_balance` + 10000
	WHERE `a_no` = '101-11-1212';

#--트랜잭션 작업 완료    
COMMIT;
SELECT * FROM `bank_account`;

#실습 8-2
START TRANSACTION;

SELECT * FROM `bank_account`;
UPDATE `bank_account` SET `a_balance` = `a_balance` - 10000
	WHERE `a_no` = '101-11-1001';
    
UPDATE `bank_account` SET `a_balance` = `a_balance` + 10000
	WHERE `a_no` = '101-11-1212';

#--트랜잭션 작업 실패 처리   
ROLLBACK;
SELECT * FROM `bank_account`;

#실습 8-3 커밋 OFF
SELECT @@AUTOCOMMIT;
SET AUTOCOMMIT = 0; 

UPDATE `bank_account` SET `a_balance` = `a_balance` - 10000
	WHERE `a_no` = '101-11-1001';
    
SELECT * FROM `bank_account`;

#실습 8-4 Look & Unlock 병행제어 실습 by root
SELECT * FROM `bank_account` ;

start transaction;

UPDATE `bank_account` SET `a_balance` = `a_balance` - 10000
	WHERE `a_no` = '101-11-1001';
    
commit;	

