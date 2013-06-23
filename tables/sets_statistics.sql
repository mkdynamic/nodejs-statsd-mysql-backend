-- Stadard DELIMITER is $$

-- Timers statistics table
CREATE  TABLE `sets_statistics` (
	`timestamp` INT NOT NULL ,
	`name` VARCHAR(64) NOT NULL ,
	`value` INT NOT NULL ,
PRIMARY KEY (`timestamp`,`name`) )$$
