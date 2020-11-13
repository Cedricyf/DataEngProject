-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Carcrash
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Carcrash` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;

USE `Carcrash` ;

-- -----------------------------------------------------
-- Table `Carcrash`.`People`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Carcrash`.`People` (
  `PERSON_ID` TEXT NULL DEFAULT NULL,
  `PERSON_TYPE` TEXT NULL DEFAULT NULL,
  `CRASH_RECORD_ID` TEXT NULL DEFAULT NULL,
  `MyUnknownColumn` TEXT NULL DEFAULT NULL,
  `SEX` TEXT NULL DEFAULT NULL,
  `AGE` TEXT NULL DEFAULT NULL,
  `SAFETY_EQUIPMENT` TEXT NULL DEFAULT NULL,
  `AIRBAG_DEPLOYED` TEXT NULL DEFAULT NULL,
  `INJURY_CLASSIFICATION` TEXT NULL DEFAULT NULL,
  `DRIVER_ACTION` TEXT NULL DEFAULT NULL,
  `DRIVER_VISION` TEXT NULL DEFAULT NULL,
  `PHYSICAL_CONDITION` TEXT NULL DEFAULT NULL,
  `BAC_RESULT` TEXT NULL DEFAULT NULL,
  `BAC_RESULT VALUE` TEXT NULL DEFAULT NULL,
  `VEHICLE_ID` INT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Carcrash`.`crashes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Carcrash`.`crashes` (
  `CRASH_RECORD_ID` TEXT NULL DEFAULT NULL,
  `POSTED_SPEED_LIMIT` INT NULL DEFAULT NULL,
  `TRAFFIC_CONTROL_DEVICE` TEXT NULL DEFAULT NULL,
  `DEVICE_CONDITION` TEXT NULL DEFAULT NULL,
  `WEATHER_CONDITION` TEXT NULL DEFAULT NULL,
  `LIGHTING_CONDITION` TEXT NULL DEFAULT NULL,
  `FIRST_CRASH_TYPE` TEXT NULL DEFAULT NULL,
  `TRAFFICWAY_TYPE` TEXT NULL DEFAULT NULL,
  `ALIGNMENT` TEXT NULL DEFAULT NULL,
  `ROADWAY_SURFACE_COND` TEXT NULL DEFAULT NULL,
  `ROAD_DEFECT` TEXT NULL DEFAULT NULL,
  `CRASH_TYPE` TEXT NULL DEFAULT NULL,
  `INTERSECTION_RELATED_I` TEXT NULL DEFAULT NULL,
  `NOT_RIGHT_OF_WAY_I` TEXT NULL DEFAULT NULL,
  `HIT_AND_RUN_I` TEXT NULL DEFAULT NULL,
  `DAMAGE` TEXT NULL DEFAULT NULL,
  `DATE_POLICE_NOTIFIED` TEXT NULL DEFAULT NULL,
  `PRIM_CONTRIBUTORY_CAUSE` TEXT NULL DEFAULT NULL,
  `SEC_CONTRIBUTORY_CAUSE` TEXT NULL DEFAULT NULL,
  `STREET_NO` INT NULL DEFAULT NULL,
  `STREET_DIRECTION` TEXT NULL DEFAULT NULL,
  `STREET_NAME` TEXT NULL DEFAULT NULL,
  `DOORING_I` TEXT NULL DEFAULT NULL,
  `NUM_UNITS` INT NULL DEFAULT NULL,
  `MOST_SEVERE_INJURY` TEXT NULL DEFAULT NULL,
  `INJURIES_TOTAL` INT NULL DEFAULT NULL,
  `INJURIES_FATAL` INT NULL DEFAULT NULL,
  `INJURIES_INCAPACITATING` INT NULL DEFAULT NULL,
  `INJURIES_NON_INCAPACITATING` INT NULL DEFAULT NULL,
  `INJURIES_REPORTED_NOT_EVIDENT` INT NULL DEFAULT NULL,
  `INJURIES_NO_INDICATION` INT NULL DEFAULT NULL,
  `INJURIES_UNKNOWN` INT NULL DEFAULT NULL,
  `CRASH_HOUR` INT NULL DEFAULT NULL,
  `CRASH_DAY_OF_WEEK` INT NULL DEFAULT NULL,
  `CRASH_MONTH` INT NULL DEFAULT NULL,
  `LATITUDE` TEXT NULL DEFAULT NULL,
  `LONGITUDE` TEXT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Carcrash`.`people_info`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Carcrash`.`people_info` (
  `PERSON_ID` VARCHAR(32) NOT NULL,
  `SEX` CHAR(2) NULL DEFAULT NULL,
  `AGE` INT NULL DEFAULT NULL,
  PRIMARY KEY (`PERSON_ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Carcrash`.`road_info`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Carcrash`.`road_info` (
  `CRASH_RECORD_ID` VARCHAR(200) NOT NULL,
  `POSTED_SPEED` INT NULL,
  `TRAFFICE_CONTROL_DEVICE` VARCHAR(45) NULL,
  `DEVICE_CONDITION` VARCHAR(45) NULL,
  `WEATHER_CONDITION` VARCHAR(45) NULL,
  `LIGHTING_CONDITION` VARCHAR(45) NULL,
  `TRAFFICWAY_TYPE` VARCHAR(45) NULL,
  `ALIGNMENT` VARCHAR(45) NULL,
  `ROAD_SURFACE_COND` VARCHAR(45) NULL,
  `ROAD_DEFECT` VARCHAR(45) NULL,
  PRIMARY KEY (`CRASH_RECORD_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Carcrash`.`crash_info`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Carcrash`.`crash_info` (
  `CRASH_RECORD_ID` VARCHAR(200) NOT NULL,
  `CRASH_TYPE` VARCHAR(45) NULL,
  `INTERSECTION_RELATED` VARCHAR(45) NULL,
  `NOT_RIGHT_OF_WAY` VARCHAR(45) NULL,
  `HIT_AND_RUN` VARCHAR(45) NULL,
  `DAMAGE` VARCHAR(45) NULL,
  `PRIMARY_CAUSE` VARCHAR(45) NULL,
  `SECONDARY_CAUSE` VARCHAR(45) NULL,
  `DOORING` VARCHAR(45) NULL,
  `NUM_UNITS` INT NULL,
  `DATE` DATETIME NULL,
  `HOUR` INT NULL,
  `LATITUDE` DECIMAL(16) NULL,
  `LONGTITUDE` DECIMAL(16) NULL,
  PRIMARY KEY (`CRASH_RECORD_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Carcrash`.`vehicle_info`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Carcrash`.`vehicle_info` (
  `CRASH_UNIT_ID` INT NOT NULL,
  `UNIT_TYPE` VARCHAR(45) NULL,
  `NUMBER_OF_PASSENGER` INT NULL,
  `VEHICLE_ID` INT NULL,
  `MANEUVER` VARCHAR(45) NULL,
  `EXCEED_SPEED_LIMIT` CHAR(4) NULL,
  PRIMARY KEY (`CRASH_UNIT_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Carcrash`.`car_info`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Carcrash`.`car_info` (
  `VEHICLE_ID` INT NOT NULL,
  `MAKE` VARCHAR(45) NULL,
  `MODEL` VARCHAR(45) NULL,
  `VEHICLE_YEAR` VARCHAR(45) NULL,
  `VEHICLE_DEFECT` VARCHAR(45) NULL,
  PRIMARY KEY (`VEHICLE_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Carcrash`.`injury_info`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Carcrash`.`injury_info` (
  `PERSON_ID` INT NOT NULL,
  `INJURY_CLASSIFICATION` VARCHAR(45) NULL,
  PRIMARY KEY (`PERSON_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Carcrash`.`people_in_crash`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Carcrash`.`people_in_crash` (
  `PERSON_ID` INT NOT NULL,
  `PERSON_TYPE` VARCHAR(16) NULL,
  `SAFETY_EQUIPMENT` VARCHAR(45) NULL,
  `AIRBAGE_DEPLOYED` VARCHAR(45) NULL,
  `DRIVER_ACTION` VARCHAR(45) NULL,
  `DRIVER_VISION` VARCHAR(45) NULL,
  `PHYSICAL_CONDITION` VARCHAR(45) NULL,
  `VEHICLE_ID` INT NULL,
  PRIMARY KEY (`PERSON_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Carcrash`.`people_condition`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Carcrash`.`people_condition` (
  `PERSON_ID` INT NOT NULL,
  `PHYSICAL_CONDITION` VARCHAR(45) NULL,
  `BAC_RESULT` VARCHAR(45) NULL,
  `BAC_RESULT_VALUE` DECIMAL(8) NULL,
  PRIMARY KEY (`PERSON_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Carcrash`.`people_info`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Carcrash`.`people_info` (
  `PERSON_ID` VARCHAR(32) NOT NULL,
  `SEX` CHAR(2) NULL DEFAULT NULL,
  `AGE` INT NULL DEFAULT NULL,
  PRIMARY KEY (`PERSON_ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Carcrash`.`FACT`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Carcrash`.`FACT` (
  `CRASH_RECORD_ID` VARCHAR(200) NOT NULL,
  `CRASH_UNIT_ID` INT NOT NULL,
  `PERSON_ID` INT NOT NULL,
  `VEHICLE_ID` INT NULL,
  INDEX `fk_crash_crash_info1_idx` (`CRASH_RECORD_ID` ASC) VISIBLE,
  INDEX `fk_fact_people_vehicle_info1_idx` (`CRASH_UNIT_ID` ASC) VISIBLE,
  INDEX `fk_FACT_injury_info1_idx` (`PERSON_ID` ASC) VISIBLE,
  INDEX `fk_FACT_car_info1_idx` (`VEHICLE_ID` ASC) VISIBLE,
  PRIMARY KEY (`CRASH_RECORD_ID`),
  CONSTRAINT `fk_crash_crash_info1`
    FOREIGN KEY (`CRASH_RECORD_ID`)
    REFERENCES `Carcrash`.`crash_info` (`CRASH_RECORD_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_crash_road_info1`
    FOREIGN KEY (`CRASH_RECORD_ID`)
    REFERENCES `Carcrash`.`road_info` (`CRASH_RECORD_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_fact_people_vehicle_info1`
    FOREIGN KEY (`CRASH_UNIT_ID`)
    REFERENCES `Carcrash`.`vehicle_info` (`CRASH_UNIT_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_FACT_injury_info1`
    FOREIGN KEY (`PERSON_ID`)
    REFERENCES `Carcrash`.`injury_info` (`PERSON_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_FACT_people_in_crash1`
    FOREIGN KEY (`PERSON_ID`)
    REFERENCES `Carcrash`.`people_in_crash` (`PERSON_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_FACT_people_condition1`
    FOREIGN KEY (`PERSON_ID`)
    REFERENCES `Carcrash`.`people_condition` (`PERSON_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_FACT_people_info1`
    FOREIGN KEY (`PERSON_ID`)
    REFERENCES `Carcrash`.`people_info` (`PERSON_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_FACT_car_info1`
    FOREIGN KEY (`VEHICLE_ID`)
    REFERENCES `Carcrash`.`car_info` (`VEHICLE_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
