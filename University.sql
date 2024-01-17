use University;
SET FOREIGN_KEY_CHECKS = 0;

INSERT INTO `Departments` VALUES (10,'국어국문학과','051-510-1010');
INSERT INTO `Departments` VALUES (11,'영어영문학과','051-510-1011');
INSERT INTO `Departments` VALUES (20,'경영학과','051-510-1020');
INSERT INTO `Departments` VALUES (21,'경제학과','051-510-1021');
INSERT INTO `Departments` VALUES (22,'정치외교학과','051-510-1022');
INSERT INTO `Departments` VALUES (23,'사회복지학과','051-510-1023');
INSERT INTO `Departments` VALUES (30,'수학과','051-510-1030');
INSERT INTO `Departments` VALUES (31,'통계학과','051-510-1031');
INSERT INTO `Departments` VALUES (32,'생명과학과','051-510-1032');
INSERT INTO `Departments` VALUES (40,'기계공학과','051-510-1040');
INSERT INTO `Departments` VALUES (41,'전자공학과','051-510-1041');
INSERT INTO `Departments` VALUES (42,'컴퓨터공학과','051-510-1042');

INSERT INTO `Professors` SET `depNo` = '10' , `proNo`='P10101',`proName`='김유신',`proJumin`='720120-1234567',`proHp`= '010-1101-1976',`proEmail`= 'kimys@hg.ac.kr',`proAddr`='서울';
INSERT INTO `Professors` SET `depNo` = '10' , `proNo`='P10102',`proName`='계백',`proJumin`='740610-1234567',`proHp`= '010-1102-1975',`proEmail`= 'gaeback@hg.ac.kr',`proAddr`='서울';
INSERT INTO `Professors` SET `depNo` = '11' , `proNo`='P11101',`proName`='김관창',`proJumin`='880529-1234567',`proHp`= '010-1103-1989',`proEmail`= 'kganch@hg.ac.kr',`proAddr`='대전';
INSERT INTO `Professors` SET `depNo` = '11' , `proNo`='P11103',`proName`='김춘추',`proJumin`='780412-1234567',`proHp`= '010-2101-1979',`proEmail`= 'kimcc@hg.ac.kr',`proAddr`='대전';
INSERT INTO `Professors` SET `depNo` = '11' , `proNo`='P11104',`proName`='이사부',`proJumin`='650911-1234567',`proHp`= '010-2104-1966',`proEmail`= 'leesabu@hg.ac.kr',`proAddr`='대전';
INSERT INTO `Professors` SET `depNo` = '22' , `proNo`='P22110',`proName`='장보고',`proJumin`='780727-1234567',`proHp`= '010-3101-1979',`proEmail`= 'jangbg@hg.ac.kr',`proAddr`='대구';
INSERT INTO `Professors` SET `depNo` = '23' , `proNo`='P23102',`proName`='선덕여왕',`proJumin`='830614-1234567',`proHp`= '010-4101-1984',`proEmail`= 'queen@hg.ac.kr',`proAddr`='대구';
INSERT INTO `Professors` SET `depNo` = '31' , `proNo`='P31101',`proName`='강감찬',`proJumin`='641020-1234567',`proHp`= '010-5101-1965',`proEmail`= 'kang@hg.ac.kr',`proAddr`='대구';
INSERT INTO `Professors` SET `depNo` = '31' , `proNo`='P31104',`proName`='신사임당',`proJumin`='711127-1234567',`proHp`= '010-6101-1972',`proEmail`= 'sinsa@hg.ac.kr',`proAddr`='부산';
INSERT INTO `Professors` SET `depNo` = '40' , `proNo`='P40101',`proName`='이이',`proJumin`='910906-1234567',`proHp`= '010-7103-1992',`proEmail`= 'leelee@hg.ac.kr',`proAddr`='부산';
INSERT INTO `Professors` SET `depNo` = '40' , `proNo`='P40102',`proName`='이황',`proJumin`='881208-1234567',`proHp`= '010-7104-1989',`proEmail`= 'hwang@hg.ac.kr',`proAddr`='광주';
INSERT INTO `Professors` SET `depNo` = '42' , `proNo`='P42103',`proName`='송상현',`proJumin`='760313-1234567',`proHp`= '010-8101-1977',`proEmail`= 'ssh@hg.ac.kr',`proAddr`='광주';

INSERT INTO `Student` VALUES ('20101001' ,10,'P10101','정우성','760121-1234567','010-1101-7601',null,'서울');
INSERT INTO `Student` VALUES ('20101002' ,10,'P10101','이정재','750611-1234567','010-1102-7506',null,'서울');
INSERT INTO `Student` VALUES ('20111011' ,11,'P11103','전지현','890530-1234567','010-1103-8905','jjh@naver.com','대전');
INSERT INTO `Student` VALUES ('20111013' ,11,'P11103','이나영','790413-1234567','010-2101-7904','lee@naver.com','대전');
INSERT INTO `Student` VALUES ('20111014' ,11,'P11104','원빈','660912-1234567','010-2104-6609','one@daum.net','대전');
INSERT INTO `Student` VALUES ('21221010' ,22,'P22110','장동건','790728-1234567','010-3101-7907','jang@naver.com','대구');
INSERT INTO `Student` VALUES ('21231002' ,23,'P23102','고소영','840615-1234567','010-4101-8406','goso@daum.net','대구');
INSERT INTO `Student` VALUES ('22311011' ,31,'P31104','김연아','651021-1234567','010-5101-6510','yuna@daum.net','대구');
INSERT INTO `Student` VALUES ('22311014' ,31,'P31104','유재석','721128-1234567','010-6101-7211',null,'부산');
INSERT INTO `Student` VALUES ('22401001' ,40,'P40101','강호동','920907-1234567','010-7103-9209',null,'부산');
INSERT INTO `Student` VALUES ('22401002' ,40,'P40101','조인성','891209-1234567','010-7104-8912','join@gmail.com','광주');
INSERT INTO `Student` VALUES ('22421003' ,42,'P42103','강동원','770314-1234567','010-8101-7703','dong@naver.com','광주');


INSERT INTO `Lectures` VALUES ('101001','P10101','대학 글쓰기',2,10,'본102');
INSERT INTO `Lectures` VALUES ('101002','P10102','한국어음운론',3,30,'본102');
INSERT INTO `Lectures` VALUES ('101003','P10102','한국현대문학사',3,30,'본103');
INSERT INTO `Lectures` VALUES ('111011','P11103','중세영문학',3,25,'본201');
INSERT INTO `Lectures` VALUES ('111012','P11104','영미시',3,25,'본201');
INSERT INTO `Lectures` VALUES ('231110','P23102','사회복지학개론',1,8,'별관103');
INSERT INTO `Lectures` VALUES ('311002','P31101','통계학의 이해',2,16,'별관303');
INSERT INTO `Lectures` VALUES ('311003','P31104','기초 통계학',3,26,'별관303');
INSERT INTO `Lectures` VALUES ('401019','P40101','기계역학',3,36,'공학관 102');
INSERT INTO `Lectures` VALUES ('421012','P42103','데이터베이스',3,32,'공학관 103');

INSERT INTO `Register` VALUES ('20101001',101001,'P10101',null,null,null,null,null,null);
INSERT INTO `Register` VALUES ('20101001',101002,'P10102',null,null,null,null,null,null);
INSERT INTO `Register` VALUES ('20111013',111011,'P11103',null,null,null,null,null,null);
INSERT INTO `Register` VALUES ('21231002',231110,'P23102',null,null,null,null,null,null);
INSERT INTO `Register` VALUES ('22401001',401019,'P40101',null,null,null,null,null,null);
INSERT INTO `Register` VALUES ('22401001',421012,'P42103',null,null,null,null,null,null);
INSERT INTO `Register` VALUES ('20101001',101003,'P10102',null,null,null,null,null,null);
INSERT INTO `Register` VALUES ('22421003',311003,'P31104',null,null,null,null,null,null);
INSERT INTO `Register` VALUES ('22421003',421012,'P42103',null,null,null,null,null,null);
INSERT INTO `Register` VALUES ('20111013',111012,'P11104',null,null,null,null,null,null);

#문제1
SELECT `stdNo`,`stdName`,`stdHp`,b.`depNo`,`depName`
  FROM `Student` AS a JOIN `Departments` AS b ON a.depNo = b.depNo ;

#문제2
SELECT `proNo`,`proName`,`proHp`,b.`depNo`,b.`depName`
  FROM `Professors` AS a JOIN `Departments` AS b ON a.depNo = b.depNo ;

#문제3
SELECT a.`lecNo`,`lecName`,b.`proName`,`proHp`
    FROM `lectures` AS a JOIN `professors` AS b ON a.proNo = b.proNo;

#문제4
SELECT a.`lecNo`,a.`lecName`,b.`proNo`,`proName`,`proHp`,c.`depNo`,c.`depName`
    FROM `lectures` AS a JOIN `professors` AS b ON a.proNo = b.proNo
    JOIN `departments` AS c ON b.depNo=c.depNo;

#문제5
SELECT `stdNo`,`stdName`,`lecNo`,`lecName`,b.`proNo`,`proName`
     FROM `Student` AS a JOIN `Professors` AS b ON a.proNo = b.proNo
     JOIN `lectures` AS c ON b.proNo = c.proNo; 

#문제6
UPDATE `register` SET   `regAttenScore` = CEIL(RAND() * 100),
					    `regMidScore`   = CEIL(RAND() * 100),
					    `regFinalScore` = CEIL(RAND() * 100),
					    `regEtcScore`   = CEIL(RAND() * 100);

#문제7
UPDATE `register` SET `regTotal` = (`regAttenScore` + `regMidScore` + `regFinalScore`) / 3;
                  
#문제8
UPDATE `register` SET `regGrade` = IF(`regTotal` >= 90, 'A',
                                   IF(`regTotal` >= 80, 'B',
                                   IF(`regTotal` >= 70, 'C',
                                   IF(`regTotal` >= 60, 'D','F'))));

#문제9
SELECT MAX(`regTotal`) FROM `register`; 
SELECT * FROM `register` ORDER BY `regTotal` DESC LIMIT 1;

#문제10
SELECT AVG(`regTotal`) '총점 평균' FROM `register` AS a
 JOIN `Student` AS b ON a.stdNo= b.stdNo
 WHERE `stdName` = '정우성';