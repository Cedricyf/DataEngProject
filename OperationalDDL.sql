-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema sakila_snowflake
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema Carcrash
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema CarcrashOp
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema CarcrashOp
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `CarcrashOp` DEFAULT CHARACTER SET utf8mb4 ;
USE `CarcrashOp` ;

-- -----------------------------------------------------
-- Table `CarcrashOp`.`traffic_crashes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CarcrashOp`.`traffic_crashes` (
  `CRASH_RECORD_ID` VARCHAR(200) NOT NULL,
  `RD_NO` TEXT NULL DEFAULT NULL,
  `CRASH_DATE_EST_I` VARCHAR(32) NULL DEFAULT NULL,
  `CRASH_DATE` VARCHAR(32) NULL DEFAULT NULL,
  `POSTED_SPEED_LIMIT` INT(11) NULL DEFAULT NULL,
  `TRAFFIC_CONTROL_DEVICE` VARCHAR(45) NULL DEFAULT NULL,
  `DEVICE_CONDITION` VARCHAR(45) NULL DEFAULT NULL,
  `WEATHER_CONDITION` VARCHAR(45) NULL DEFAULT NULL,
  `LIGHTING_CONDITION` VARCHAR(45) NULL DEFAULT NULL,
  `FIRST_CRASH_TYPE` VARCHAR(45) NULL DEFAULT NULL,
  `TRAFFICWAY_TYPE` VARCHAR(45) NULL DEFAULT NULL,
  `LANE_CNT` INT(11) NULL DEFAULT NULL,
  `ALIGNMENT` VARCHAR(45) NULL DEFAULT NULL,
  `ROADWAY_SURFACE_COND` VARCHAR(45) NULL DEFAULT NULL,
  `ROAD_DEFECT` VARCHAR(45) NULL DEFAULT NULL,
  `REPORT_TYPE` VARCHAR(45) NULL DEFAULT NULL,
  `CRASH_TYPE` VARCHAR(45) NULL DEFAULT NULL,
  `INTERSECTION_RELATED_I` VARCHAR(45) NULL DEFAULT NULL,
  `NOT_RIGHT_OF_WAY_I` VARCHAR(45) NULL DEFAULT NULL,
  `HIT_AND_RUN_I` VARCHAR(45) NULL DEFAULT NULL,
  `DAMAGE` VARCHAR(45) NULL DEFAULT NULL,
  `DATE_POLICE_NOTIFIED` VARCHAR(32) NULL DEFAULT NULL,
  `PRIM_CONTRIBUTORY_CAUSE` VARCHAR(45) NULL DEFAULT NULL,
  `SEC_CONTRIBUTORY_CAUSE` VARCHAR(45) NULL DEFAULT NULL,
  `STREET_NO` INT(8) NULL DEFAULT NULL,
  `STREET_DIRECTION` CHAR(1) NULL DEFAULT NULL,
  `STREET_NAME` VARCHAR(45) NULL DEFAULT NULL,
  `BEAT_OF_OCCURRENCE` INT(11) NULL DEFAULT NULL,
  `PHOTOS_TAKEN_I` VARCHAR(8) NULL DEFAULT NULL,
  `STATEMENTS_TAKEN_I` VARCHAR(8) NULL DEFAULT NULL,
  `DOORING_I` VARCHAR(45) NULL DEFAULT NULL,
  `WORK_ZONE_I` VARCHAR(32) NULL DEFAULT NULL,
  `WORK_ZONE_TYPE` VARCHAR(32) NULL DEFAULT NULL,
  `WORKERS_PRESENT_I` VARCHAR(32) NULL DEFAULT NULL,
  `NUM_UNITS` INT(11) NULL DEFAULT NULL,
  `MOST_SEVERE_INJURY` VARCHAR(32) NULL DEFAULT NULL,
  `INJURIES_TOTAL` INT(11) NULL DEFAULT NULL,
  `INJURIES_FATAL` INT(11) NULL DEFAULT NULL,
  `INJURIES_INCAPACITATING` INT(11) NULL DEFAULT NULL,
  `INJURIES_NON_INCAPACITATING` INT(11) NULL DEFAULT NULL,
  `INJURIES_REPORTED_NOT_EVIDENT` INT(11) NULL DEFAULT NULL,
  `INJURIES_NO_INDICATION` INT(11) NULL DEFAULT NULL,
  `INJURIES_UNKNOWN` INT(11) NULL DEFAULT NULL,
  `CRASH_HOUR` INT(11) NULL DEFAULT NULL,
  `CRASH_DAY_OF_WEEK` VARCHAR(32) NULL DEFAULT NULL,
  `CRASH_MONTH` VARCHAR(32) NULL DEFAULT NULL,
  `LATITUDE` DOUBLE NULL DEFAULT NULL,
  `LONGITUDE` DOUBLE NULL DEFAULT NULL,
  `LOCATION` TEXT NULL DEFAULT NULL,
  PRIMARY KEY (`CRASH_RECORD_ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `CarcrashOp`.`traffic_people`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CarcrashOp`.`traffic_people` ( 
  `PERSON_ID` VARCHAR(32) NOT NULL,
  `PERSON_TYPE` VARCHAR(16) NULL DEFAULT NULL,
  `CRASH_RECORD_ID` VARCHAR(200) NOT NULL,
  `RD_NO` TEXT NULL DEFAULT NULL,
  `VEHICLE_ID` INT(11) NULL DEFAULT NULL,
  `CRASH_DATE` VARCHAR(32) NULL DEFAULT NULL,
  `SEAT_NO` INT(11) NULL DEFAULT NULL,
  `CITY` VARCHAR(20) NULL DEFAULT NULL,
  `STATE` VARCHAR(8) NULL DEFAULT NULL,
  `ZIPCODE` INT(11) NULL DEFAULT NULL,
  `SEX` CHAR(2) NULL DEFAULT NULL,
  `AGE` INT(11) NULL DEFAULT NULL,
  `DRIVERS_LICENSE_STATE` VARCHAR(8) NULL DEFAULT NULL,
  `DRIVERS_LICENSE_CLASS` CHAR(2) NULL DEFAULT NULL,
  `SAFETY_EQUIPMENT` VARCHAR(45) NULL DEFAULT NULL,
  `AIRBAG_DEPLOYED` VARCHAR(45) NULL DEFAULT NULL,
  `EJECTION` TEXT NULL DEFAULT NULL,
  `INJURY_CLASSIFICATION` VARCHAR(45) NULL DEFAULT NULL,
  `HOSPITAL` TEXT NULL DEFAULT NULL,
  `EMS_AGENCY` TEXT NULL DEFAULT NULL,
  `EMS_RUN_NO` TEXT NULL DEFAULT NULL,
  `DRIVER_ACTION` VARCHAR(45) NULL DEFAULT NULL,
  `DRIVER_VISION` VARCHAR(45) NULL DEFAULT NULL,
  `PHYSICAL_CONDITION` VARCHAR(45) NULL DEFAULT NULL,
  `PEDPEDAL_ACTION` TEXT NULL DEFAULT NULL,
  `PEDPEDAL_VISIBILITY` TEXT NULL DEFAULT NULL,
  `PEDPEDAL_LOCATION` TEXT NULL DEFAULT NULL,
  `BAC_RESULT` VARCHAR(45) NULL DEFAULT NULL,
  `BAC_RESULT VALUE` DOUBLE NULL DEFAULT NULL,
  `CELL_PHONE_USE` VARCHAR(32) NULL DEFAULT NULL,
  
  PRIMARY KEY (`PERSON_ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `CarcrashOp`.`traffic_vehicles`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CarcrashOp`.`traffic_vehicles` (
  `CRASH_UNIT_ID` INT(11) NOT NULL,
  `CRASH_RECORD_ID` VARCHAR(200) NOT NULL,
  `RD_NO` TEXT NULL DEFAULT NULL,
  `CRASH_DATE` VARCHAR(32) NULL DEFAULT NULL,
  `UNIT_NO` INT(11) NULL DEFAULT NULL,
  `UNIT_TYPE` VARCHAR(45) NULL DEFAULT NULL,
  `NUM_PASSENGERS` INT(11) NULL DEFAULT NULL,
  `VEHICLE_ID` INT(11) NULL DEFAULT NULL,
  `CMRC_VEH_I` TEXT NULL DEFAULT NULL,
  `MAKE` VARCHAR(45) NULL DEFAULT NULL,
  `MODEL` VARCHAR(45) NULL DEFAULT NULL,
  `LIC_PLATE_STATE` VARCHAR(45) NULL DEFAULT NULL,
  `VEHICLE_YEAR` INT(4) NULL DEFAULT NULL,
  `VEHICLE_DEFECT` VARCHAR(45) NULL DEFAULT NULL,
  `VEHICLE_TYPE` VARCHAR(45) NULL DEFAULT NULL,
  `VEHICLE_USE` VARCHAR(45) NULL DEFAULT NULL,
  `TRAVEL_DIRECTION` VARCHAR(10) NULL DEFAULT NULL,
  `MANEUVER` VARCHAR(45) NULL DEFAULT NULL,
  `TOWED_I` VARCHAR(10) NULL DEFAULT NULL,
  `FIRE_I` VARCHAR(10) NULL DEFAULT NULL,
  `OCCUPANT_CNT` INT(11) NULL DEFAULT NULL,
  `EXCEED_SPEED_LIMIT_I` VARCHAR(10) NULL DEFAULT NULL,
  `TOWED_BY` TEXT NULL DEFAULT NULL,
  `TOWED_TO` TEXT NULL DEFAULT NULL,
  `AREA_00_I` TEXT NULL DEFAULT NULL,
  `AREA_01_I` TEXT NULL DEFAULT NULL,
  `AREA_02_I` TEXT NULL DEFAULT NULL,
  `AREA_03_I` TEXT NULL DEFAULT NULL,
  `AREA_04_I` TEXT NULL DEFAULT NULL,
  `AREA_05_I` TEXT NULL DEFAULT NULL,
  `AREA_06_I` TEXT NULL DEFAULT NULL,
  `AREA_07_I` TEXT NULL DEFAULT NULL,
  `AREA_08_I` TEXT NULL DEFAULT NULL,
  `AREA_09_I` TEXT NULL DEFAULT NULL,
  `AREA_10_I` TEXT NULL DEFAULT NULL,
  `AREA_11_I` TEXT NULL DEFAULT NULL,
  `AREA_12_I` TEXT NULL DEFAULT NULL,
  `AREA_99_I` TEXT NULL DEFAULT NULL,
  `FIRST_CONTACT_POINT` TEXT NULL DEFAULT NULL,
  `CMV_ID` INT(11) NULL DEFAULT NULL,
  `USDOT_NO` TEXT NULL DEFAULT NULL,
  `CCMC_NO` TEXT NULL DEFAULT NULL,
  `ILCC_NO` TEXT NULL DEFAULT NULL,
  `COMMERCIAL_SRC` TEXT NULL DEFAULT NULL,
  `GVWR` TEXT NULL DEFAULT NULL,
  `CARRIER_NAME` TEXT NULL DEFAULT NULL,
  `CARRIER_STATE` TEXT NULL DEFAULT NULL,
  `CARRIER_CITY` TEXT NULL DEFAULT NULL,
  `HAZMAT_PLACARDS_I` TEXT NULL DEFAULT NULL,
  `HAZMAT_NAME` TEXT NULL DEFAULT NULL,
  `UN_NO` TEXT NULL DEFAULT NULL,
  `HAZMAT_PRESENT_I` TEXT NULL DEFAULT NULL,
  `HAZMAT_REPORT_I` TEXT NULL DEFAULT NULL,
  `HAZMAT_REPORT_NO` TEXT NULL DEFAULT NULL,
  `MCS_REPORT_I` TEXT NULL DEFAULT NULL,
  `MCS_REPORT_NO` TEXT NULL DEFAULT NULL,
  `HAZMAT_VIO_CAUSE_CRASH_I` TEXT NULL DEFAULT NULL,
  `MCS_VIO_CAUSE_CRASH_I` TEXT NULL DEFAULT NULL,
  `IDOT_PERMIT_NO` TEXT NULL DEFAULT NULL,
  `WIDE_LOAD_I` TEXT NULL DEFAULT NULL,
  `TRAILER1_WIDTH` TEXT NULL DEFAULT NULL,
  `TRAILER2_WIDTH` TEXT NULL DEFAULT NULL,
  `TRAILER1_LENGTH` INT(11) NULL DEFAULT NULL,
  `TRAILER2_LENGTH` INT(11) NULL DEFAULT NULL,
  `TOTAL_VEHICLE_LENGTH` INT(11) NULL DEFAULT NULL,
  `AXLE_CNT` INT(11) NULL DEFAULT NULL,
  `VEHICLE_CONFIG` TEXT NULL DEFAULT NULL,
  `CARGO_BODY_TYPE` TEXT NULL DEFAULT NULL,
  `LOAD_TYPE` TEXT NULL DEFAULT NULL,
  `HAZMAT_OUT_OF_SERVICE_I` TEXT NULL DEFAULT NULL,
  `MCS_OUT_OF_SERVICE_I` TEXT NULL DEFAULT NULL,
  `HAZMAT_CLASS` TEXT NULL DEFAULT NULL,
  
  PRIMARY KEY (`CRASH_UNIT_ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
