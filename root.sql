CREATE DATABASE `Shop`;
CREATE USER 'shop'@'%' IDENTIFIED BY '1234';
GRANT ALL PRIVILEGES ON Shop.*TO 'shop'@'%';
FLUSH PRIVILEGES;
SET GLOBAL log_bin_trust_function_creators = 1;
#날짜 : 24/01/09
#이름 : 최이진
#내용 : SQL 연습문제2
CREATE DATABASE `Bank`;
CREATE USER 'bank'@'%' IDENTIFIED BY '1234';
GRANT ALL PRIVILEGES ON Bank.* TO 'bank'@'%';
GRANT ALL PRIVILEGES ON shop.* TO 'chlvldzmf'@'%';
FLUSH PRIVILEGES;
