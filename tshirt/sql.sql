--ALTER TABLE `database`.`order_form` DROP PRIMARY KEY;
--DROP TABLE `database`.`order_form`;
--CREATE TABLE `database`.`order_form` (
--	`order_id` INT NOT NULL,
--	`first_name` VARCHAR(25),
--	`lastName` VARCHAR(50),
--	`address1` VARCHAR(50),
--	`address_2` VARCHAR(50),
--	`city` VARCHAR(35),
--	`state` VARCHAR(25),
--	`zip` VARCHAR(15),
--	`email` VARCHAR(50) NOT NULL,
--	`comments` VARCHAR(250) NOT NULL,
--	PRIMARY KEY (`order_id`)
--);



-- insert into tshirtosaur.ORDER (teeshirtId,quantity,gender,size,style,color,firstName,lastName,address1,address2,city,state,zip,country,email,comments,freefield1,freefield2,freefield3,time_stamp) values(1, '5','M', 'XL','CREST','GREEN','John','Johnson','100 abc drive','farmview','chicago','IL','60601','USA','john@johnson.com','comments','freefield1','freefield2','freefield3',SYSDATE() )

--insert into tshirtosaur.ORDER (teeshirtId,email,time_stamp) VALUES(1000,'john@johnson.com',SYSDATE() );

select * from tshirtosaur.ORDER

--DROP TABLE `tshirtosaur`.`ORDER`;

--CREATE TABLE `tshirtosaur`.`ORDER` (
--	`orderId` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
--	`teeshirtId` BIGINT NOT NULL,
--	`quantity` VARCHAR(10),
--	`gender` VARCHAR(10),
--	`size` VARCHAR(10),
--	`style` VARCHAR(10),
--	`color` VARCHAR(10),
--	`firstName` VARCHAR(50),
--	`lastName` VARCHAR(50),
--	`address1` VARCHAR(100),
--	`address2` VARCHAR(100),
--	`city` VARCHAR(50),
--	`state` VARCHAR(25),
--	`zip` VARCHAR(15),
--	`country` VARCHAR(50),
--	`email` VARCHAR(250) NOT NULL,
--	`comments` VARCHAR(1000),
--	`freefield1` VARCHAR(50),
--	`freefield2` VARCHAR(50),
--	`freefield3` VARCHAR(50),
--	`time_stamp` DATETIME NOT NULL,
--	PRIMARY KEY (`orderId`)
--);
--
--CREATE INDEX `orderId` ON `tshirtosaur`.`ORDER` (`orderId` ASC);
