# 날짜 : 24/01/08
# 이름 : 최이진
# 내용 : 교재 ch03 SQL 기본문법 

#손코딩 p111
USE market_db;

#손코딩 p112
SELECT *FROM member;

#손코딩 p113
SELECT * FROM market_db.member;
SELECT * FROM member;

#손코딩 p114
SELECT mem_name FROM member;

#손코딩 p115
SELECT addr, debut_date, meme_name FROM member;
#손코딩 p116
#SELECT * FROM 쿠팡_회원_테이블(member);
SELECT *FROM member WHERE mem_name = '블랙핑크';
#손코딩 p117
SELECT * FROM member WHERE meem_number = 4;
SELECT mem_id, mem_name
  FROM member
  WHERE height <= 162;
SELECT meme_nsme, height, meem_number
 FROM member
 WHERE height >=165 AND meme_number > 6;
#손코딩 p118
SELECT mem_name, height, mem_number
FROM member
WHERE height >= 165 OR mem_number >6;
SELECT mem_name, height
  FROM member
  WHERE height >= 163 AND height <= 165;
SELECT mem_name, height 
  FROM member
  WHERE height BETWEEN 163 AND 165;
  
#손코딩 p119
SELECT mem_name, addr
   FROM member
   where addr IN('경기','전남','경남');
SELECT *
  from MEMBER
  WHERE mem_name LIKE '우%';
  
#손코딩 p120
SELECT * FROM member
   WHERE mem_name LIKE '__핑크';
   
#손코딩 P125
SELECT mem_id, mem_name, debut_date
   FROM member
   ORDER BY debut_date;
#손코딩 P126 
SELECT mem_id, mem_name, debut_date
  FROM member
  ORDER BY debut_date DESC;
SELECT mem_id, mem_name, debut_date, height
  FROM member
  ORDER BY height DESC;
  # WHERE height >= 164; --오류 발생 ORDER BY 절은 WHERE 절 다음에 나와야 한다.

#손코딩 P127
SELECT mem_id, mem_name, debut_date, height
   FROM member
   WHERE height >=164
   ORDER BY height DESC;
SELECT mem_id,mem_name, debut_date, height
  FROM member
  WHERE height >=164
  ORDER BY height DESC, debut_date ASC;
#손코딩 P128 
SELECT * FROM member LIMIT 3;
SELECT mem_name, debut_date FROM member
  ORDER BY debut_date LIMIT 3;
  
#손코딩 P129 
SELECT mem_name, height FROM member
    ORDER BY height DESC
    LIMIT 3,2;
SELECT addr FROM member;
    
#손코딩 P130
SELECT addr FROM member ORDER BY addr;
SELECT DISTINCT addr FROM member;

#손코딩 P131
SELECT mem_id, amount FROM buy ORDER BY mem_id;

#손코딩 P132
SELECT mem_id, SUM(amount) FROM buy GROUP BY mem_id;

#손코딩 P133
SELECT mem_id "회원 아이디", SUM(price*amount) "총 구매 금액"
 FROM buy GROUP BY mem_id;
SELECT AVG(amount) "평균 구매 개수" FROM buy; 
#손코딩 P134
SELECT mem_id, AVG(amount) "평균 구매 개수"
  FROM Bbuy
  GROUP BY mem_id;
SELECT COUNT(*) FROM member;
SELECT COUNT(phone1) "연락처가 있는 회원" FROM member;

SELECT mem_id "회원 아이디", SUM(price*amount) "총 구매 금액"
   FROM buy
   GROUP BY mem_id;
   
#손코딩 P135
SELECT mem_id "회원 아이디", SUM(price*amount)"총 구매 금액"
  FROM  buy
  #WHERE SUM(price*amount) > 1000; --GROUP BY 절이 있으명 HAVING 절 써줄 것
  GROUP BY mem_id;
SELECT mem_id "회원 아이디", SUM(price*amount) "총 구매 금액"
FROM buy
GROUP BY mem_id
HAVING SUM(price*amount) > 1000;
  
#손코딩 P136    
SELECT mem_id "회원 아이디", SUM(price*amount) "총 구매 금액"
 FROM buy
 GROUP BY mem_id
 HAVING SUM(price*amount) > 1000
 ORDER BY SUM(price*amount) DESC;
#손코딩 P141 
USE market_db;
CREATE TABLE hongong1 (toy_id INT, toy_name CHAR(4), age INT);
INSERT INTO hongong1 VALUES (1, '우디', 25);

INSERT INTO hongong1 (toy_id, toy_name) VALUES (2, '버즈');
INSERT INTO hongong1 (toy_name, age, toy_id) VALUES('제시',20, 3);


#손코딩 P142
CREATE TABLE hongong2(
    toy_id INT AUTO_INCREMENT PRIMARY KEY,
    toy_name CHAR(4),
    age INT);

INSERT INTO hongong2 VALUES (NULL, '보핍', 25);
INSERT INTO hongong2 VALUES (NULL, '슬링키', 22);
INSERT INTO hongong2 VALUES (NULL, '렉스' , 21);
SELECT * FROM hongong2;  

SELECT LAST_INSERT_ID();
  
#손코딩 P143
ALTER TABLE hongong2 AUTO_INCREMENT = 100;
INSERT INTO hongong2 VALUES (NULL, '재남', 35);
SELECT * FROM hongong2;

## 처음부터 입력되는 값 1000, 3씩 증가
CREATE TABLE hongong3(
     toy_id INT AUTO_INCREMENT PRIMARY KEY,
     toy_name CHAR(4),
     age INT);
ALTER TABLE hongong3 AUTO_INCREMENT = 1000;
SET @@auto_increment_increment=3;
     
#손코딩 P144
INSERT INTO hongong3 VALUES (NULL, '토마스', 20);
INSERT INTO hongong3 VALUES (NULL, '제임스', 23);
INSERT INTO hongong3 VALUES (NULL, '고든' , 25);
SELECT * FROM hongong3;

#손코딩 P145
SELECT COUNT(*) FROM world.city;
DESC world.city;
SELECT * FROM world.city LIMIT 5;

#손코딩 P146
CREATE TABLE city_popul (city_name CHAR(35),population INT);
INSERT INTO city_popul
   SELECT Name, Population FROM world.city;
#손코딩 P147
USE market_db;
UPDATE city_popul
   SET city_name = '서울'
   WHERE city_name ='seoul';
SELECT * FROM city_popul WHERE city_name = '서울';   
#손코딩 P148
UPDATE city_popul
  SET city_name = '뉴욕',population =0
  WHERE city_name = 'New York';
SELECT * FROM city_popul WHERE city_name = '뉴욕';
UPDATE city_popul
  SET city_name = '서울';
#손코딩 P149
UPDATE city_popul
  SET population = population / 10000;
SELECT * FROM city_popul LIMIT 5;  

DELETE FROM city_popul
  WHERE city_name LIKE 'NEW%';
#손코딩 P150
DELETE FROM city_popul
  WHERE city_name LIKE 'NEW%'
  LIMIT 5;
  
#손코딩 p151
CREATE TABLE big_table1(SELECT * FROM world.city, sakila.country);
CREATE TABLE big_table2(SELECT * FROM world.city, sakila.country);
CREATE TABLE big_table3(SELECT * FROM world.city, sakila.country);
SELECT COUNT(*) FROM big_table1;

##DELETE와 TRUNCATE는 빈 테이블을 남긴다. - DROP은 테이블 자체를 삭제한다.
##TRUNCATE와 DROP이 빠르다
DELETE FROM big_table1;
DROP TABLE big_table2;
TRUNCATE TABLE bog_table3;

#손코딩 P159
USE market_db;
CREATE TABLE hongong4(
  tinyint_col   TINYINT,
  smallint_col  SMALLINT,
  int_col       INT,
  bigint_col    BIGINT);
  
#손코딩 P160
INSERT INTO hongong4 VALUES(127,32767,214783647,9000000000000000000);

#손코딩 P164

#손코딩 P165
CREATE DATABASE neflix_db;
USE netflix_db;
CREATE TABLE movie
   (movie_id   INT,
   movie_title VARCHAR(30),
   movie_director VARCHAR(20),
   movie_star varchar(20),
   movie_script longtext,
   movie_film   LONGBLOB
   );
   
#손코딩 p167

USE market_db;
SET @myVar1 = 5;
SET @myVar2 = 4.25;
SELECT @myVar1 ;
SELECT @myVar1 + @myVar2;

SET @txt = '가수 이름==>' ;
SET @height = 166;
SELECT @txt , mem_name FROM member WHERE height > @height ;

#손코딩 P168
SET @count = 3;
#SELECT mem_name, height FROM member ORDER BY height LIMIT @count; -LIMIT에는 변수 사용 불가
PREPARE mySQL FROM 'SELECT mem_name, height FROM member ORDER BY height LIMIT ?';
EXECUTE mySQL USING @count;
#손코딩 P169  
SELECT AVG(price) AS '평균 가격' FROM buy;
SELECT CAST(AVG(price) AS SIGNED) '평균 가격' FROM buy;
SELECT CONVERT(AVG(price), SIGNED) '평균 가격' FROM buy;
#손코딩 p170
SELECT CAST('2022$12$12' AS DATE);
SELECT CAST('2022/12/12' AS DATE);
SELECT CAST('2022%12%12' AS DATE);
SELECT CAST('2022@12@12' AS DATE);

SELECT num, CONCAT(CAST(price AS CHAR), 'X', CAST(amount AS CHAR),'=')
      '가격X수량', price*amount '구매액'
    FROM buy;  
#손코딩 p171
SELECT '100'+'200' ;

SELECT CONCAT ('100', '200');

SELECT CONCAT (100,'200');
SELECT 100+'200';
#손코딩 p177
USE market_db;
SELECT * FROM buy INNER JOIN member 
  ON buy.mem_id = member.mem_id
 WHERE buy.mem_id = 'GRL'; 
 
#손코딩 p179
SELECT * FROM buy
 INNER JOIN member
 ON buy.mem_id = member.mem_id;
 
SELECT mem_id, mem_name, prod_name, addr, CONCAT(phone1,phone2) '연락처'
  FROM buy
  INNER JOIN member
  ON buy.mem_id =member.mem_id;
  
#손코딩 p180
SELECT buy.mem_id, mem_name, prod_name, addr, CONCAT(phone1,phone2) '연락처'
  FROM buy
  INNER JOIN member
  ON buy.mem_id =member.mem_id;

#손코딩 p181
SELECT buy.mem_id ,member.mem_name, buy.prod_name, member.addr,
          CONCAT(member.phone1,member.phone2) '연락처'
     FROM buy
       INNER JOIN member
       ON buy.mem_id = member.mem_id;
       
SELECT B.mem_id, M.mem_name, B.prod_name, M.addr,
			   CONCAT(M.phone1,M.phone2) '연락처'
        FROM buy B 
          INNER JOIN member M ON B.mem_id = M.mem_id;
          
SELECT M.mem_id, M.mem_name, B.prod_name, M.addr
    FROM buy B INNER JOIN member M
    ON B.mem_id = M.mem_id
  ORDER BY M.mem_id;  
  
#손코딩 p183
SELECT DISTINCT M.mem_id, M.mem_name, M.addr
  FROM buy B
  INNER JOIN member M
  ON B.mem_id = M.mem_id
 ORDER BY M.mem_id; 

#손코딩 p184
SELECT M.mem_id,M.mem_name, B.prod_name, M.addr
  FROM member M
  LEFT OUTER JOIN buy B ON M.mem_id = B.mem_id
ORDER BY M.mem_id;

#손코딩 p185
SELECT M.mem_id,M.mem_name, B.prod_name ,M.addr
  FROM buy B
  RIGHT OUTER JOIN member M
  ON M.mem_id = B.mem_id
 ORDER BY M.mem_id; 
 
 SELECT DISTINCT M.mem_id, B.prod_name, M.mem_name, M.addr
   FROM member M
   LEFT OUTER JOIN buy B
   ON M.mem_id = B.mem_id
  WHERE B.prod_name IS NULL
  ORDER BY M.mem_id;
  
#손코딩 p188
SELECT COUNT(*) `데이터 개수`
   FROM sakila.inventory
     CROSS JOIN world.city;
     
#손코딩 p191
CREATE TABLE emp_table(
  emp CHAR(4),
  manager CHAR(4),
  phone VARCHAR(8)
  );
  
INSERT INTO emp_table VALUES('대표',NULL,'0000');
INSERT INTO emp_table VALUES('영업이사','대표','1111');
INSERT INTO emp_table VALUES('관리이사','대표','2222');
INSERT INTO emp_table VALUES('정보이사','대표','3333');
INSERT INTO emp_table VALUES('영업과장','영업이사','1111-1');
INSERT INTO emp_table VALUES('경리부장','관리이사','2222-1');
INSERT INTO emp_table VALUES('인사부장','관리이사','2222-2');
INSERT INTO emp_table VALUES('개발팀장','정보이사','3333-1');
INSERT INTO emp_table VALUES('개발주임','정보이사','3333-1-1');

SELECT A.emp '직원' , B.emp '직속상관',B.phone '직속상관 연락처'
   FROM emp_table A
   INNER JOIN emp_table B
   ON A.manager = B.emp
WHERE A.emp = '경리부장';

#손코딩 p197
DROP PROCEDURE IF EXISTS ifProc1;
DELIMITER $$
CREATE PROCEDURE ifProc1()
BEGIN
   IF 100 = 100 THEN
     SELECT '100은 100과 같습니다';
     END IF;
END $$
DELIMITER ;
CALL ifProc1();
   
#손코딩 p199
DROP PROCEDURE IF EXISTS ifProc2;
DELIMITER $$
CREATE PROCEDURE ifProc2()
BEGIN
  DECLARE myNum INT;
  SET myNum = 200;
  IF myNum = 100 THEN
      SELECT '100입니다';
    ELSE
      SELECT '100이 아닙니다.';
    END IF;
END $$
DELIMITER ;
CALL ifProc2();

DROP PROCEDURE IF EXISTS ifProc3;
DELIMITER $$
CREATE PROCEDURE ifProc3()
BEGIN
  DECLARE debutDate DATE;
  DECLARE curDATE DATE;
  DECLARE days INT;
  SELECT debut_date INTO debutDate
    FROM market_db.member
    WHERE mem_id = 'APN';
    
  SET curDate = CURRENT_DATE();
  SET days = DATEDIFF(curDate, debutDate);
  
  IF(days/365) >= 5 THEN 
     SELECT CONCAT ('데뷔한 지 ',days,'일이나 지났습니다.');
  ELSE 
     SELECT '데뷔한 지 ' +days + '일 밖에 안되었네요.';
  END IF;
END $$
DELIMITER ;
CALL ifProc3();

#손코딩 202
DROP PROCEDURE IF EXISTS careProc;
DELIMITER $$
CREATE PROCEDURE caseProc()
BEGIN
  DECLARE point INT ;
  DECLARE credit CHAR(1);
  SET point =88;
  
  CASE
   WHEN point >= 90 THEN
     SET credit = 'A';
   WHEN point >= 80 THEN
     SET credit = 'B';
   WHEN point >= 70 THEN
     SET credit = 'C';
   WHEN point >= 60 THEN
     SET credit = 'D';
   ELSE
     SET credit = 'F';
  END CASE;
  SELECT CONCAT('취득점수==>',point), CONCAT('학점==>', credit);
END $$
DELIMITER ;
CALL caseProc();

#손코딩 204
SELECT mem_id, SUM(price*amount) '총구매액'
  FROM buy
  GROUP BY mem_id;

SELECT mem_id, SUM(price*amount) '총구매액'
  FROM buy
  GROUP BY mem_id
  ORDER BY SUM(price*amount) DESC;

SELECT B.mem_id, M.mem_name,
  SUM(price*amount) '총구매액'
 FROM buy B
    INNER JOIN member M
    ON B.mem_id = M.mem_id
  GROUP BY B.mem_id
  ORDER BY SUM(price*amount) DESC;
  
#손코딩 205
SELECT M.mem_id, M.mem_name,
   SUM(price*amount) '총구매액'
  FROM buy B
    RIGHT OUTER JOIN member M
    ON B.mem_id = M.mem_id
  GROUP BY M.mem_id
  ORDER BY SUM(price*amount) DESC;
    
#손코딩 206
SELECT M.mem_id, M.mem_name, SUM(price*amount) '총구매액',
   CASE
      WHEN (SUM(price*amount) >= 1500) THEN'최우수고객'
      WHEN(SUM(price*amount) >= 1000) THEN '우수고객'
      WHEN (SUM(price*amount) >=1) THEN '일반고객'
      ELSE '유령고객'
    END'회원등급'
  FROM buy B 
    RIGHT JOIN member M
    ON B.mem_id = M.mem_id
GROUP BY M.mem_id
ORDER BY SUM(price*amount) DESC;
     
#손코딩 207
DROP PROCEDURE IF EXISTS whileProc;
DELIMITER $$
CREATE PROCEDURE whileproc()
BEGIN
  DECLARE i INT; 
  DECLARE hap INT;
  SET i = 1;
  SET hap = 0;
  
  WHILE ( i <= 100) DO
    SET hap = hap +i;
    SET i = i + 1;
  END WHILE;
     SELECT '1부터 100까지의 합==>',hap;
END $$
DELIMITER ;
CALL whileProc(); 

#손코딩 209
DROP PROCEDURE IF EXISTS whileProc2;
DELIMITER $$
CREATE PROCEDURE whileProc2()
BEGIN
   DECLARE i INT;
   DECLARE hap INT;
   SET i = 1;
   SET hap = 0;
   
   mywhile:
   WHILE (i <= 100) DO
     IF (i%4 = 0) THEN
       SET i = i+1;
       ITERATE myWhile;
     END IF;
     SET hap = hap + i;
     IF(hap > 1000) THEN
       LEAVE myWhile;
     END IF;
     SET i = i + 1;
   END WHILE;
   
   SELECT '1부터 100까지의 합(4의 배수 제외), 1000넘으면 종료 ==>', hap;
   END $$
   DELIMITER ;
   CALL whileProc2();

#손코딩 210 --쿼리문 만들어놓고 대기
PREPARE myquery FROM 'SELECT * FROM member WHERE mem_id = "BLK"';
EXECUTE myQuery;
DEALLOCATE PREPARE myquery;


#손코딩 211
DROP TABLE IF EXISTS gate_table;
CREATE TABLE gate_table (id INT AUTO_INCREMENT PRIMARY KEY, entry_time DATETIME);
# ---현재 날짜와 시간을 @curDate 변수에 넣습니다
SET @curDate = CURRENT_TIMESTAMP();
# ---?를 사용해서 entry_time에 입력할 값을 비워둡니다.
PREPARE myQuery FROM 'INSERT INTO gate_table VALUES(NULL,?)';
# --- USING 문으로 @curDate 변수를 넣은 후에 실행
EXECUTE myQuery USING @curDate;
DEALLOCATE PREPARE myQuery;

SELECT * FROM gate_table;

#손코딩 219


#손코딩 221


#손코딩 222


#손코딩 223


#손코딩 224


#손코딩 225


#손코딩 226


#손코딩 227