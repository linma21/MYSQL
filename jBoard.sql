INSERT INTO `Article` (`cate`,`title`,`content`,`file`,`writer`,`regip`,`rdate`)
SELECT `cate`, `title`,`content`,`file`,`writer`,`regip`,`rdate` FROM `Article`;

SELECT COUNT(*) FROM `Article` WHERE `parent` =0;

SELECT *, b.`nick` FROM `Article` AS a JOIN `User` 
AS b ON a.writer=b.uid 
WHERE `parent` =0
ORDER BY `no` DESC 
LIMIT 0, 10;

DELETE FROM `Article` WHERE `no` > 5000 AND `file` =0;

UPDATE `Article` SET `hit` = `hit` +1 WHERE `articleno`= 1;

SELECT a.*, b.nick FROM `Article` AS a JOIN `Uarticleser` AS b ON a.writer = b.Uid WHERE `parent` =8;
UPDATE `Article` SET `title`=?, `content`=?, `file`=? WHERE `no`=?;

SELECT * FROM `Article` WHERE `no` =4577; 

UPDATE `Article` SET `content`= "쿼리문 확인" WHERE `no` =4577;

UPDATE `Article` SET `cate`= "qna" WHERE `title` LIKE '글%';

ALTER TABLE `User` ADD COLUMN `sms` CHAR(1) AFTER `regip`;

ALTER TABLE `User` DROP COLUMN `agree1`;

SELECT * FROM `Article` WHERE `no` > 5000;

SELECT COUNT(*) FROM `User` WHERE `uid`='a101';
DELETE FROM `Article` WHERE `parent`=0 AND `title` IS NULL;

SELECT a.*, b.oName,b.download FROM `Article` AS A LEFT OUTER JOIN `file` AS B ON A.no = B.ano WHERE `no` =4839;
SELECT * FROM `Article` AS A LEFT OUTER JOIN `file` AS B ON A.no = B.ano WHERE `no` =4839;
SELECT a.*, b.nick FROM `Article` AS a JOIN `User` AS b ON a.writer = b.Uid WHERE `parent` ='4848' ORDER BY `no` DESC;

CREATE user 'choiyj'@'%' identified by 'Abcd1234!';
grant all privileges on *.* to 'choiyj'@'%';
flush privileges;user