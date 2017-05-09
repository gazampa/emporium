--INSERT INTO tshirtosaur.TEESHIRT (name,image_location,description,display_text,action,sort_order,freefield1,freefield2,freefield3) VALUES('Teeshirt # 1','/rsc/images/tee1.jpg','a description of teeshirt # 1','teeshirt #1','teeSpecs.jsp','1','','',''),('Teeshirt # 2','/rsc/images/tee2.jpg','a description of teeshirt # 2','teeshirt #2','teeSpecs.jsp','2','','',''),('Teeshirt # 3','/rsc/images/tee3.jpg','a description of teeshirt # 3','teeshirt #3','teeSpecs.jsp','3','','',''),('Teeshirt # 4','/rsc/images/tee4.jpg','a description of teeshirt 4','teeshirt #1','teeSpecs.jsp','4','','','');
-- commit
-- select * from tshirtosaur.TEESHIRT
-- ALTER TABLE tshirtosaur.TEESHIRT CHANGE COLUMN teeshirt_id teeshirt_id BIGINT UNSIGNED NOT NULL;

--ALTER TABLE tshirtosaur.TEESHIRT DROP PRIMARY KEY;

-- ALTER TABLE tshirtosaur.TEESHIRT DROP INDEX teeshirt_id;

-- DROP TABLE tshirtosaur.TEESHIRT;

-- CREATE TABLE tshirtosaur.TEESHIRT (
--	teeshirt_id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
--	name VARCHAR(25),
--	image_location VARCHAR(75),
--	description VARCHAR(250),
--	display_text VARCHAR(25),
--	action VARCHAR(50),
--	sort_order VARCHAR(10),
--	price varchar(10) NOT NULL,
--	freefield1 VARCHAR(50),
--	freefield2 VARCHAR(50),
--	freefield3 VARCHAR(50),
--	PRIMARY KEY (teeshirt_id)
-- );
--
-- CREATE UNIQUE INDEX teeshirt_id ON tshirtosaur.TEESHIRT (teeshirt_id ASC);


