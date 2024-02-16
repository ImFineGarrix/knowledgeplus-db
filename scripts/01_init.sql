-- MySQL Script generated by MySQL Workbench
-- Sat Jan  6 19:56:41 2024
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema default_schema
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema INT371
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `INT371` ;

-- -----------------------------------------------------
-- Schema INT371
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `INT371` DEFAULT CHARACTER SET utf8 ;
-- -----------------------------------------------------
-- Schema INT371_02
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `INT371_02` ;

-- -----------------------------------------------------
-- Schema INT371_02
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `INT371_02` ;
USE `INT371` ;

-- -----------------------------------------------------
-- Table `INT371`.`skills`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `INT371`.`skills` ;

CREATE TABLE IF NOT EXISTS `INT371`.`skills` (
  `skill_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `description` LONGTEXT NULL DEFAULT NULL,
  `image_url` LONGTEXT NULL DEFAULT NULL,
  `type` ENUM("SOFT", "HARD") NOT NULL,
  PRIMARY KEY (`skill_id`),
  UNIQUE INDEX `skill_id_UNIQUE` (`skill_id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `INT371`.`careers`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `INT371`.`careers` ;

CREATE TABLE IF NOT EXISTS `INT371`.`careers` (
  `career_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `description` LONGTEXT NULL DEFAULT NULL,
  PRIMARY KEY (`career_id`),
  UNIQUE INDEX `carrer_id_UNIQUE` (`career_id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `INT371`.`sections`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `INT371`.`sections` ;

CREATE TABLE IF NOT EXISTS `INT371`.`sections` (
  `section_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `image_url` LONGTEXT NULL DEFAULT NULL,
  PRIMARY KEY (`section_id`),
  UNIQUE INDEX `field_id_UNIQUE` (`section_id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `INT371`.`organizations`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `INT371`.`organizations` ;

CREATE TABLE IF NOT EXISTS `INT371`.`organizations` (
  `organization_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `description` LONGTEXT NULL DEFAULT NULL,
  `image_url` LONGTEXT NULL DEFAULT NULL,
  PRIMARY KEY (`organization_id`),
  UNIQUE INDEX `skill_id_UNIQUE` (`organization_id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `INT371`.`courses`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `INT371`.`courses` ;

CREATE TABLE IF NOT EXISTS `INT371`.`courses` (
  `course_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `description` LONGTEXT NULL DEFAULT NULL,
  `learn_hours` VARCHAR(45) NULL DEFAULT NULL,
  `academic_year` VARCHAR(45) NULL DEFAULT NULL,
  `course_link` LONGTEXT NULL DEFAULT NULL,
  `organization_id` INT NOT NULL,
  `learning_outcome` LONGTEXT NULL,
  PRIMARY KEY (`course_id`),
  UNIQUE INDEX `course_id_UNIQUE` (`course_id` ASC) VISIBLE,
  INDEX `fk_Courses_ Organizations1_idx` (`organization_id` ASC) VISIBLE,
  CONSTRAINT `fk_Courses_ Organizations1`
    FOREIGN KEY (`organization_id`)
    REFERENCES `INT371`.`organizations` (`organization_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `INT371`.`levels`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `INT371`.`levels` ;

CREATE TABLE IF NOT EXISTS `INT371`.`levels` (
  `level_id` INT NOT NULL,
  `level` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`level_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `INT371`.`skills_levels`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `INT371`.`skills_levels` ;

CREATE TABLE IF NOT EXISTS `INT371`.`skills_levels` (
  `skills_levels_id` INT NOT NULL AUTO_INCREMENT,
  `skill_id` INT NOT NULL,
  `knowledge_desc` LONGTEXT NULL,
  `ability_desc` LONGTEXT NULL,
  `level_id` INT NOT NULL,
  `course_id` INT NULL,
  `career_id` INT NULL,
  PRIMARY KEY (`skills_levels_id`),
  INDEX `fk_skills_has_levels_skills1_idx` (`skill_id` ASC) VISIBLE,
  INDEX `fk_skills_has_levels_levels1_idx` (`level_id` ASC) VISIBLE,
  INDEX `fk_skills_levels_courses1_idx` (`course_id` ASC) VISIBLE,
  INDEX `fk_skills_levels_careers1_idx` (`career_id` ASC) VISIBLE,
  CONSTRAINT `fk_skills_has_levels_skills1`
    FOREIGN KEY (`skill_id`)
    REFERENCES `INT371`.`skills` (`skill_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_skills_has_levels_levels1`
    FOREIGN KEY (`level_id`)
    REFERENCES `INT371`.`levels` (`level_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_skills_levels_courses1`
    FOREIGN KEY (`course_id`)
    REFERENCES `INT371`.`courses` (`course_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_skills_levels_careers1`
    FOREIGN KEY (`career_id`)
    REFERENCES `INT371`.`careers` (`career_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `INT371`.`groups`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `INT371`.`groups` ;

CREATE TABLE IF NOT EXISTS `INT371`.`groups` (
  `group_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`group_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `INT371`.`sections_groups`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `INT371`.`sections_groups` ;

CREATE TABLE IF NOT EXISTS `INT371`.`sections_groups` (
  `sections_groups_id` INT NOT NULL AUTO_INCREMENT,
  `section_id` INT NOT NULL,
  `group_id` INT NOT NULL,
  PRIMARY KEY (`sections_groups_id`),
  INDEX `fk_sections_has_groups_groups1_idx` (`group_id` ASC) VISIBLE,
  INDEX `fk_sections_has_groups_sections1_idx` (`section_id` ASC) VISIBLE,
  CONSTRAINT `fk_sections_has_groups_sections1`
    FOREIGN KEY (`section_id`)
    REFERENCES `INT371`.`sections` (`section_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_sections_has_groups_groups1`
    FOREIGN KEY (`group_id`)
    REFERENCES `INT371`.`groups` (`group_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `INT371`.`groups_careers`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `INT371`.`groups_careers` ;

CREATE TABLE IF NOT EXISTS `INT371`.`groups_careers` (
  `groups_careers_id` INT NOT NULL AUTO_INCREMENT,
  `group_id` INT NOT NULL,
  `career_id` INT NOT NULL,
  PRIMARY KEY (`groups_careers_id`),
  INDEX `fk_groups_has_careers_careers1_idx` (`career_id` ASC) VISIBLE,
  INDEX `fk_groups_has_careers_groups1_idx` (`group_id` ASC) VISIBLE,
  CONSTRAINT `fk_groups_has_careers_groups1`
    FOREIGN KEY (`group_id`)
    REFERENCES `INT371`.`groups` (`group_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_groups_has_careers_careers1`
    FOREIGN KEY (`career_id`)
    REFERENCES `INT371`.`careers` (`career_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

USE `INT371_02` ;

-- -----------------------------------------------------
-- Table `INT371_02`.`users`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `INT371_02`.`users` ;

CREATE TABLE IF NOT EXISTS `INT371_02`.`users` (
  `user_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `password` VARCHAR(200) NOT NULL,
  `role` ENUM("owner","admin") NOT NULL,
  PRIMARY KEY (`user_id`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
