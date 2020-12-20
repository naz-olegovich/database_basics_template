-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`account`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`account` ;

CREATE TABLE IF NOT EXISTS `mydb`.`account` (
  `id` INT NOT NULL,
  `username` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `status` INT NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`access`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`access` ;

CREATE TABLE IF NOT EXISTS `mydb`.`access` (
  `role` VARCHAR(45) NOT NULL,
  `account_id` INT NOT NULL,
  PRIMARY KEY (`role`),
  INDEX `fk_access_account1_idx` (`account_id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`servicenode`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`servicenode` ;

CREATE TABLE IF NOT EXISTS `mydb`.`servicenode` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `description` VARCHAR(120) NULL,
  `openapi` VARCHAR(1000) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`servicechain`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`servicechain` ;

CREATE TABLE IF NOT EXISTS `mydb`.`servicechain` (
  `id` INT NOT NULL,
  `servicenode_id` INT NOT NULL,
  `servicechain_id` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_servicechain_servicenode1_idx` (`servicenode_id` ASC) VISIBLE,
  INDEX `fk_servicechain_servicechain1_idx` (`servicechain_id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`stream`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`stream` ;

CREATE TABLE IF NOT EXISTS `mydb`.`stream` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `decription` VARCHAR(120) NULL,
  `entrypoint` INT NOT NULL,
  `access_role` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_stream_servicechain1_idx` (`entrypoint` ASC) VISIBLE,
  INDEX `fk_stream_access1_idx` (`access_role` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`beattype`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`beattype` ;

CREATE TABLE IF NOT EXISTS `mydb`.`beattype` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `installer` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`beat`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`beat` ;

CREATE TABLE IF NOT EXISTS `mydb`.`beat` (
  `id` INT NOT NULL,
  `interval` INT NOT NULL,
  `type` INT NOT NULL,
  `stream_id` INT NOT NULL,
  `access_role` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_beat_beattype_idx` (`type` ASC) VISIBLE,
  INDEX `fk_beat_stream1_idx` (`stream_id` ASC) VISIBLE,
  INDEX `fk_beat_access1_idx` (`access_role` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`source`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`source` ;

CREATE TABLE IF NOT EXISTS `mydb`.`source` (
  `id` INT NOT NULL,
  `url` VARCHAR(200) NULL,
  `username` VARCHAR(45) NULL,
  `password` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `apikey` VARCHAR(200) NULL,
  `beat_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_source_beat1_idx` (`beat_id` ASC) VISIBLE,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `mydb`.`account`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`account` (`id`, `username`, `password`, `email`, `status`) VALUES (0, 'Admin', 'admin', 'admin@mail.com', 1);
INSERT INTO `mydb`.`account` (`id`, `username`, `password`, `email`, `status`) VALUES (1, 'User', 'user', 'user@mail.com', 1);

COMMIT;


-- -----------------------------------------------------
-- Data for table `mydb`.`access`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`access` (`role`, `account_id`) VALUES ('admin', 0);
INSERT INTO `mydb`.`access` (`role`, `account_id`) VALUES ('user', 1);

COMMIT;


-- -----------------------------------------------------
-- Data for table `mydb`.`servicenode`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`servicenode` (`id`, `name`, `description`, `openapi`) VALUES (0, 'Elastic', 'Save data to DB', 'openAPI');
INSERT INTO `mydb`.`servicenode` (`id`, `name`, `description`, `openapi`) VALUES (1, 'Chain0', 'some action', 'openAPI1');
INSERT INTO `mydb`.`servicenode` (`id`, `name`, `description`, `openapi`) VALUES (2, 'Chain1', 'some action', 'openAPI2');
INSERT INTO `mydb`.`servicenode` (`id`, `name`, `description`, `openapi`) VALUES (3, 'Chain2', 'some action', 'openAPI3');

COMMIT;


-- -----------------------------------------------------
-- Data for table `mydb`.`servicechain`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`servicechain` (`id`, `servicenode_id`, `servicechain_id`) VALUES (0, 1, 1);
INSERT INTO `mydb`.`servicechain` (`id`, `servicenode_id`, `servicechain_id`) VALUES (1, 2, 2);
INSERT INTO `mydb`.`servicechain` (`id`, `servicenode_id`, `servicechain_id`) VALUES (2, 3, 3);
INSERT INTO `mydb`.`servicechain` (`id`, `servicenode_id`, `servicechain_id`) VALUES (3, 0, NULL);

COMMIT;


-- -----------------------------------------------------
-- Data for table `mydb`.`stream`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`stream` (`id`, `name`, `decription`, `entrypoint`, `access_role`) VALUES (0, 'Stream0', 'What data output', 0, 'admin');

COMMIT;


-- -----------------------------------------------------
-- Data for table `mydb`.`beattype`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`beattype` (`id`, `name`, `installer`) VALUES (0, 'For_common_sites', 'installer0');
INSERT INTO `mydb`.`beattype` (`id`, `name`, `installer`) VALUES (1, 'For_social_network1', 'installer1');

COMMIT;


-- -----------------------------------------------------
-- Data for table `mydb`.`beat`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`beat` (`id`, `interval`, `type`, `stream_id`, `access_role`) VALUES (0, 72000, 0, 0, 'user');
INSERT INTO `mydb`.`beat` (`id`, `interval`, `type`, `stream_id`, `access_role`) VALUES (1, 7200, 1, 1, 'user');

COMMIT;


-- -----------------------------------------------------
-- Data for table `mydb`.`source`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`source` (`id`, `url`, `username`, `password`, `email`, `apikey`, `beat_id`) VALUES (0, 'https://source.com/source1.html', NULL, NULL, NULL, NULL, 0);
INSERT INTO `mydb`.`source` (`id`, `url`, `username`, `password`, `email`, `apikey`, `beat_id`) VALUES (1, 'https://social_network/source2.html', 'username1', 'username1', 'user@mail.com', 'api_key', 1);

COMMIT;

