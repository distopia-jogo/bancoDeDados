DROP DATABASE Distopia;
CREATE DATABASE Distopia;

USE Distopia; 

CREATE TABLE tbl_nicknames(
	id_nickname INT(10) NOT NULL AUTO_INCREMENT,
    nickname_1 VARCHAR(15) NOT NULL,
    nickname_2 VARCHAR(15) NOT NULL,

	PRIMARY KEY (id_nickname)
);

CREATE TABLE tbl_users(
	id_user INT(10) NOT NULL AUTO_INCREMENT,
	email varchar(25) NOT NULL,
    senha varchar(25) NOT NULL,
    data_nasc DATE NOT NULL,
    FK_id_nickname INT(10) NOT NULL,
    
    PRIMARY KEY (id_user),
    CONSTRAINT FK_id_nickname FOREIGN KEY (FK_id_nickname) REFERENCES tbl_nicknames(id_nickname)
    
);

CREATE TABLE tbl_achivements(
	id_achivement INT(10) NOT NULL AUTO_INCREMENT,
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


insert into tbl_nicknames (id_nickname, nickname_1, nickname_2) 
				values (default, "LEgfgfgfO", "MAgfgfgTHEUS");

#delete from tbl_nicknames where id_nickname = 2;

insert into tbl_users(id_user, email, senha, data_nasc, FK_id_nickname) 
				values (default, "dis@gmail.com", "disto23", "2021-01-21", @@identity);


select * from tbl_nicknames;
select * from tbl_users;