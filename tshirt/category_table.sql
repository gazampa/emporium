-- INSERT INTO tshirtosaur.CATEGORY (name,image_location,description,display_text,action,sort_order,freefield1,freefield2,freefield3) VALUES('Category # 1','/rsc/images/category1.jpg','a description of category # 1','category #1','category.jsp','1','','',''),('Category # 2','/rsc/images/category2.jpg','a description of category # 2','category #2','category.jsp','2','','',''),('Category # 3','/rsc/images/category3.jpg','a description of category # 3','category #3','category.jsp','3','','',''),('Category # 4','/rsc/images/category4.jpg','a description of category 4','category #4','category.jsp','4','','','');
--ALTER TABLE `tshirtosaur`.`CATEGORY` DROP INDEX `tshirtosaur`.`category_id`;
--
--DROP TABLE `tshirtosaur`.`CATEGORY`;
--
--CREATE TABLE `tshirtosaur`.`CATEGORY` (
--	category_id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
--	name VARCHAR(25),
--	image_location VARCHAR(75),
--	description VARCHAR(250),
--	display_text VARCHAR(25),
--	action VARCHAR(50),	
--	sort_order VARCHAR(10),
--	freefield1 VARCHAR(50),
--	freefield2 VARCHAR(50),
--	freefield3 VARCHAR(50),
--	PRIMARY KEY (category_id)
--);
--
--CREATE UNIQUE INDEX `category_id` ON `tshirtosaur`.`CATEGORY` (`category_id` ASC);
