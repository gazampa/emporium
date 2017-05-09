ALTER TABLE `tshirtosaur`.`CATEGORY_TEESHIRT` DROP PRIMARY KEY;

DROP TABLE `tshirtosaur`.`CATEGORY_TEESHIRT`;

CREATE TABLE `tshirtosaur`.`CATEGORY_TEESHIRT` (
	`category_id` BIGINT NOT NULL,
	`teeshirt_id` BIGINT NOT NULL,
	PRIMARY KEY (`category_id`,`teeshirt_id`)
);


select t.teeshirt_id, t.name, t.image_location, t.action, t.description from tshirtosaur.CATEGORY_TEESHIRT as ct
 join tshirtosaur.TEESHIRT as t ON (t.teeshirt_id=ct.teeshirt_id)
 where ct.category_id=1

select teeshirt_id from tshirtosaur.TEESHIRT
 where teeshirt_id NOT IN ( select distinct teeshirt_id from tshirtosaur.CATEGORY_TEESHIRT ) 

--WHERE ct.category_id IS NULL;


