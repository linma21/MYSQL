# 날짜 : 24/01/08
# 이름 : 최이진
# 내용 : 제5장 인덱스

################################
#인덱스
################################

#실습 5-1 인덱스 조회
SHOW INDEX FROM `User1`;
SHOW INDEX FROM `User2`;
SHOW INDEX FROM `User3`;

#실습 5-2 인덱스 생성 및 적용
CREATE INDEX `idx_user1_uid` ON `User1`(`uid`);
ANALYZE TABLE `User1`;

#실습 5-3 인덱스 삭제
DROP INDEX idx_user1_uid ON `User1`;

#실습 5-4 뷰 생성
CREATE VIEW `vw_user1` AS (SELECT `name`,`hp`,`age`FROM `User1`);
CREATE VIEW `vw_user4_age_under30` AS (SELECT * FROM `User4` WHERE `age` < 30);
CREATE VIEW `vw_member_with_sales` AS (
   SELECT
   a.`uid` AS `직원 아이디`,
   b.`name` AS `직원이름`,
   b.`pos` AS `직급`,
   c.`name` AS `부서명`,
   a.`year` AS `매출년도`,
   a.`month` AS `월`,
   a.`sale` AS `매출액`
  FROM `Sales` AS a
  JOIN `Member` AS b ON a.uid = b.uid
  JOIN `Department` AS c ON b.dep = c.depNO
  );

#실습 5-5 뷰 조회
SELECT * FROM `vw_user1`;
SELECT * FROM `vw_user2_age_under30`;

#실습 5-6 뷰 삭제
DROP VIEW `vw_user1`;
DROP VIEW `vw_user4_age_under30`;

#실습 5-7 프로시저 생성 및 실행 기본
DELIMITER $$
  CREATE PROCEDURE 	proc_test1()
  BEGIN
     SELECT * FROM `Mamber`;
     SELECT * FROM `Department`;
  END $$
  DELIMITER ;
 
CALL proc_test1(); 

#실습 5-8 매개 변수를 갖는 프로시저 생성 및 실행
DELIMITER $$
  CREATE PROCEDURE 	PROC_TEST2(IN _UserName VARCHAR(10))
  BEGIN
    SELECT * FROM `Member` WHERE `name` =_userName;
   END $$
   DELIMITER ;
   
DROP PROCEDURE proc_test2; 
   
CALL proc_test2('김유신');
   
DELIMITER $$
  CREATE PROCEDURE 	PROC_TEST3(IN _pos VARCHAR(10), IN _dep TINYINT)
  BEGIN
    SELECT * FROM `Member` WHERE `Pos`=_pos AND `dep`=_dep;
    END $$
    DELIMITER ;
 
 CALL proc_test3('차장',101);
 
 DELIMITER $$
   CREATE PROCEDURE PROC_TEST4(IN _pos VARCHAR(10), OUT _count INT)
   BEGIN
     SELECT COUNT(*) INTO _count FROM `Member` WHERE `pos` =_pos;
   END $$
   DELIMITER ;
   
 CALL proc_test4('대리', @_count);
 SELECT CONCAT('_count : ',@_count)
 
 # 실습 5-9
 
 DELIMITER $$
  CREATE PROCEDURE proc_test5(IN _name VARCHAR(10))
  BEGIN
   DECLARE userId VARCHAR(10);
   SELECT `uid` INTO userId FROM `member`WHERE `name` = _name;
   SELECT * FROM `Sales` WHERE `uid`=userId;
  END $$
  DELIMITER ;
  
  DROP PROCEDURE proc_test5;
 
 CALL proc_test5('김유신');
  
DELIMITER $$
  CREATE PROCEDURE proc_test6()
  BEGIN
   DECLARE num1 INT;
   DECLARE num2 INT;
   
   SET num1 = 1;
   SET num2 = 2;
   
   IF (NUM1>NUM2) THEN
      SELECT 'NUM1이 NUM2보다 크다.'as `결과2`;
   ELSE
	SELECT 'NUM1이 NUM2보다 작다.' AS `결과2`;
   END IF;
 END $$
 DELIMITER ;
 
CALL proc_test6();

DELIMITER $$
  CREATE PROCEDURE 	proc_test7()
  BEGIN 
    DECLARE sum INT;
    DECLARE num INT;
    
    SET sum = 0;
    SET num = 1;
    
    WHILE (num <= 10) DO
     SET sum = sum + num;
     SET num = num +1;
    END WHILE; 
    
    SELECT sum AS '1부터 10까지 합계';
   END $$
   DELIMITER ;
   
DROP PROCEDURE proc_test7;
   
 CALL proc_test7();  

 # 실습 5-10 커서를 활용하는 프로시저
DELIMITER $$
  CREATE PROCEDURE proc_test8()
  BEGIN
    #변수선언
    DECLARE total INT DEFAULT 0;
    DECLARE price INT;
    DECLARE endOfRow BOOLEAN DEFAULT false;
  
   #커서선언
    DECLARE salesCursor CURSOR FOR
      SELECT `sale` FROM `Sales`;
    
    #반복조건
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET endOfRow = TRUE;
    
    #커서 열기
    OPEN salesCursor;
    
    cursor_loop: LOOP
      FETCH salesCursor INTO price;
      
      IF endOfRow THEN
         LEAVE cursor_loop;
      END IF;
      
      SET total = total + price;
     END LOOP;
     
     SELECT total AS '전체 합계';
     
     CLOSE salesCursor;
  END $$
  DELIMITER ;

DROP PROCEDURE proc_test8;  
CALL proc_test8();  

 # 실습 5-11 저장 함수 생성 및 호출

DELIMITER $$
  CREATE FUNCTION func_test1(_userId VARCHAR(10)) RETURNS INT
  BEGIN
    DECLARE total INT;
    
    SELECT SUM(`sale`) INTO total FROM `Sales` WHERE `uid`=_userId;
    
    RETURN total;
  END $$
  DELIMITER ;
  
SELECT func_test1('a101');  
DROP FUNCTION func_test1;
  
DELIMITER $$
  CREATE FUNCTION func_test2(_sale INT) RETURNS DOUBLE
  BEGIN
     DECLARE bonus DOUBLE;
     
     IF (_sale >= 100000) THEN
         SET bonus = _sale * 0.1;
     ELSE
         SET bonus = _sale*0.05;
     END IF;
     
RETURN bonus;
END $$
DELIMITER ;    
 
 SELECT
   `uid`,
   `year`,
   `month`,
   `sale`,
   func_test2(`sale`) AS `bonus`
  FROM `Sales`; 
  
