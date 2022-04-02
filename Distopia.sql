#DROP DATABASE Distopia;
CREATE DATABASE Distopia;

USE Distopia;

CREATE TABLE tbl_nicknames(
	id_nickname INT(10) NOT NULL AUTO_INCREMENT,
    nickname_character1 VARCHAR(5) NOT NULL UNIQUE,
    nickname_character2 VARCHAR(15) NOT NULL UNIQUE,

	PRIMARY KEY (id_nickname)
);

CREATE TABLE tbl_users(
	id_user INT(10) NOT NULL AUTO_INCREMENT,
    borning_date_user DATE NOT NULL,
    FK_id_nickname INT(10) NOT NULL,
    
    PRIMARY KEY (id_user),
    CONSTRAINT FK_id_nickname FOREIGN KEY (FK_id_nickname) REFERENCES tbl_nicknames(id_nickname)
    
);

CREATE TABLE tbl_achivements(
	id_achivement INT NOT NULL AUTO_INCREMENT,
    type_achivement VARCHAR(100) NOT NULL,
    name_achivement VARCHAR(100) NOT NULL,
    img_achivement VARCHAR(500) NOT NULL,
    
    PRIMARY KEY (id_achivement)
);

CREATE TABLE tbl_achivement_user(
	date_achivement INT(10),
    FK_id_user INT(10)  NOT NULL,
    FK_id_achivement INT(10) NOT NULL,
    
    CONSTRAINT FK_id_user FOREIGN KEY (FK_id_user) REFERENCES tbl_users(id_user),
    CONSTRAINT FK_id_achivement FOREIGN KEY (FK_id_achivement) REFERENCES tbl_achivements(id_achivement)
    
);

