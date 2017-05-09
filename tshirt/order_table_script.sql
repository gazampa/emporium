ALTER TABLE tshirtosaur`.`ORDER` DROP PRIMARY KEY;

ALTER TABLE `tshirtosaur`.`ORDER` DROP INDEX `tshirtosaur`.`orderId`;

DROP TABLE `tshirtosaur`.`ORDER`;

CREATE TABLE `tshirtosaur`.`ORDER` (
	`orderId` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
	`teeshirtId` BIGINT NOT NULL,
	`quantity` VARCHAR(10),
	`gender` VARCHAR(10),
	`size` VARCHAR(10),
	`style` VARCHAR(10),
	`color` VARCHAR(10),
	`firstName` VARCHAR(50),
	`lastName` VARCHAR(50),
	`address1` VARCHAR(100),
	`address2` VARCHAR(100),
	`city` VARCHAR(50),
	`state` VARCHAR(25),
	`zip` VARCHAR(15),
	`country` VARCHAR(50),
	`email` VARCHAR(250) NOT NULL,
	`comments` VARCHAR(1000),
	`status` VARCHAR(50),
	`freefield1` VARCHAR(50),
	`freefield2` VARCHAR(50),
	`freefield3` VARCHAR(50),
	`time_stamp` DATETIME NOT NULL,
	PRIMARY KEY (`orderId`)
);

CREATE INDEX `orderId` ON `tshirtosaur`.`ORDER` (`orderId` ASC);

ALTER TABLE `tshirtosaur`.`ORDER` ADD PRIMARY KEY (`orderId`);

