INSERT INTO `Article` (`title`,`content`,`writer`,`regip`,`rdate`)
SELECT `title`,`content`,`writer`,`regip`,`rdate` FROM `Article`;

SELECT COUNT(*) FROM `Article`;

SELECT *, b.`nick` FROM `Article` AS a JOIN `User` 
AS b ON a.writer=b.uid 
ORDER BY `no` DESC 
LIMIT 0, 10;

DELETE FROM `Article` WHERE `no` > 10;

UPDATE `Article` SET `hit` = `hit` +1 WHERE `no`= 1;