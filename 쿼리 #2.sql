CREATE TABLE `사원` (
    `사원ID` VARCHAR(3) PRIMARY KEY,
    `부서ID` INT NOT NULL,
    `연봉` INT NOT NULL
);

 
 insert into `사원` values (001,100,2500);
 insert into `사원` values (002,100,3000);
 insert into `사원` values (003,200,4500);
 insert into `사원` values (004,200,3000);
 insert into `사원` values (005,200,2500);
 insert into `사원` values (006,300,4500);
 insert into `사원` values (007,300,3000);
 
 SELECT B.`사원ID`,`부서ID`,`연봉`, COL1, COL2, COL3
 FROM (SELECT `사원ID`,
 	ROW_NUMBER() OVER(PARTITION BY 부서ID ORDER BY 연봉 DESC) AS COL1
	 ,SUM(연봉) OVER(PARTITION BY 부서ID ORDER 
	 BY 사원ID ROWS BETWEEN UNBOUNDED PRECEDING AND 
	 CURRENT ROW) AS COL2
	 ,MAX(연봉) OVER(ORDER BY 연봉 DESC ROWS CURRENT ROW) AS COL3
	 	FROM 사원) AS SUB
	 	JOIN `사원` AS B
	 	ON SUB.`사원ID` = B.`사원ID`
	 	ORDER BY 1;