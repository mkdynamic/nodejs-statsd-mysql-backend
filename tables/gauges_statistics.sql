-- Stadard DELIMITER is $$

-- Gauges statistics table
CREATE  TABLE `gauges_statistics` (
    `timestamp` INT NOT NULL ,
    `name` VARCHAR(64) NOT NULL ,
    `value` INT NOT NULL ,
PRIMARY KEY (`timestamp`,`name`) )$$
