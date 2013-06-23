-- Stadard DELIMITER is $$

-- Counters statistics table
CREATE  TABLE `counters_statistics` (
    `timestamp` INT NOT NULL ,
    `name` VARCHAR(64) NOT NULL ,
    `value` INT NOT NULL ,
PRIMARY KEY (`timestamp`,`name`) )$$
