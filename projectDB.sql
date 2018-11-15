SET SESSION FOREIGN_KEY_CHECKS=0;

/* Drop Tables */

DROP TABLE IF EXISTS bookComentTbl;
DROP TABLE IF EXISTS takeTbl;
DROP TABLE IF EXISTS bookTbl;
DROP TABLE IF EXISTS postComentTbl;
DROP TABLE IF EXISTS postTbl;
DROP TABLE IF EXISTS userTbl;




/* Create Tables */

CREATE TABLE bookComentTbl
(
	userNum int unsigned NOT NULL,
	bookCode varchar(10) NOT NULL,
	comentNum int unsigned NOT NULL AUTO_INCREMENT,
	comentText varchar(200) NOT NULL,
	comentCreDat date NOT NULL,
	PRIMARY KEY (comentNum)
);


CREATE TABLE bookTbl
(
	userNum int unsigned NOT NULL,
	bookCode varchar(10) NOT NULL,
	bookName varchar(150) NOT NULL,
	bookPub varchar(50) NOT NULL,
	bookWriter varchar(80) NOT NULL,
	bookYear date,
	bookAmount tinyint NOT NULL,
	bookImg varchar(100),
	bookLike int NOT NULL,
	moddat date NOT NULL,
	credat date NOT NULL,
	bookDesc text,
	PRIMARY KEY (bookCode)
);


CREATE TABLE postComentTbl
(
	userNum int unsigned NOT NULL,
	postCode varchar(10) NOT NULL,
	comentNum int unsigned NOT NULL AUTO_INCREMENT,
	comentText varchar(200) NOT NULL,
	comentCreDat date NOT NULL,
	PRIMARY KEY (comentNum)
);


CREATE TABLE postTbl
(
	userNum int unsigned NOT NULL,
	postCode varchar(10) NOT NULL,
	postTitle varchar(100) NOT NULL,
	postText text NOT NULL,
	credat date NOT NULL,
	moddat date NOT NULL,
	PRIMARY KEY (postCode)
);


CREATE TABLE takeTbl
(
	userNum int unsigned NOT NULL,
	bookCode varchar(10) NOT NULL,
	checkIn date NOT NULL,
	takeSDat date NOT NULL,
	takeEDat date NOT NULL,
	reDat date NOT NULL,
	checkRe tinyint unsigned NOT NULL
);


CREATE TABLE userTbl
(
	userNum int unsigned NOT NULL AUTO_INCREMENT,
	userName varchar(100) NOT NULL,
	userGender tinyint NOT NULL,
	userId varchar(20) NOT NULL,
	userPwd varchar(20) NOT NULL,
	userBirth date NOT NULL,
	userAddr varchar(40) NOT NULL,
	userMobile varchar(15) NOT NULL,
	userScore int DEFAULT 0 NOT NULL,
	userLevel tinyint NOT NULL,
	PRIMARY KEY (userNum),
	UNIQUE (userPwd)
);



/* Create Foreign Keys */

ALTER TABLE bookComentTbl
	ADD FOREIGN KEY (bookCode)
	REFERENCES bookTbl (bookCode)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE takeTbl
	ADD FOREIGN KEY (bookCode)
	REFERENCES bookTbl (bookCode)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE postComentTbl
	ADD FOREIGN KEY (postCode)
	REFERENCES postTbl (postCode)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE bookComentTbl
	ADD FOREIGN KEY (userNum)
	REFERENCES userTbl (userNum)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE bookTbl
	ADD FOREIGN KEY (userNum)
	REFERENCES userTbl (userNum)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE postComentTbl
	ADD FOREIGN KEY (userNum)
	REFERENCES userTbl (userNum)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE postTbl
	ADD FOREIGN KEY (userNum)
	REFERENCES userTbl (userNum)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE takeTbl
	ADD FOREIGN KEY (userNum)
	REFERENCES userTbl (userNum)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;



