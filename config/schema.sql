DROP TABLE IF EXISTS users;
CREATE TABLE users(
  id  int(11) NOT NULL  auto_increment PRIMARY KEY,
  email VARCHAR(60),
  first_name VARCHAR(56),
  last_name VARCHAR(56)
);

CREATE  TABLE `inmoapp_development`.`cities` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(45) NOT NULL ,
  `code` INT(11) UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) );
____________________________________________________________________

CREATE  TABLE `inmoapp_development`.`addresses` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
  `address` VARCHAR(45) NOT NULL ,
  `city_id` INT(10) NOT NULL ,
  `num` INT(10) NOT NULL ,
  PRIMARY KEY (`id`) );

ALTER TABLE `inmoapp_development`.`addresses` CHANGE COLUMN `city_id` `city_id` INT(10) UNSIGNED NOT NULL  , 
  ADD CONSTRAINT `fk_addresses_1`
  FOREIGN KEY (`city_id` )
  REFERENCES `inmoapp_development`.`cities` (`id` )
  ON DELETE RESTRICT
  ON UPDATE CASCADE
, ADD INDEX `fk_addresses_1_idx` (`city_id` ASC) ;

ALTER TABLE `inmoapp_development`.`addresses` CHANGE COLUMN `address` `street` VARCHAR(45) NOT NULL  ;

ALTER TABLE `inmoapp_development`.`addresses` ADD COLUMN `neighborhood` VARCHAR(45) NULL  AFTER `num` ;


_________________________________________________________________




