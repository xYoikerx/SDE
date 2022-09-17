-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema SDE
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema SDE
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `SDE` DEFAULT CHARACTER SET utf8 ;
USE `SDE` ;

-- -----------------------------------------------------
-- Table `SDE`.`centro_apoyo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `SDE`.`centro_apoyo` ;

CREATE TABLE IF NOT EXISTS `SDE`.`centro_apoyo` (
  `idcentro_apoyo` INT NOT NULL AUTO_INCREMENT,
  `nombre_centro` VARCHAR(45) NULL,
  `direccion` VARCHAR(45) NULL,
  `fecha_fundacion` DATE NULL,
  PRIMARY KEY (`idcentro_apoyo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SDE`.`afectado`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `SDE`.`afectado` ;

CREATE TABLE IF NOT EXISTS `SDE`.`afectado` (
  `idafectado` INT NULL AUTO_INCREMENT,
  `nombrea` VARCHAR(45) NULL,
  `appa` VARCHAR(45) NULL,
  `apma` VARCHAR(45) NULL,
  `edad` INT NULL,
  `fecha_nac` DATE NULL,
  `centro_apoyo_idcentro_apoyo` INT NOT NULL,
  PRIMARY KEY (`idafectado`, `centro_apoyo_idcentro_apoyo`),
  INDEX `fk_afectado_centro_apoyo_idx` (`centro_apoyo_idcentro_apoyo` ASC),
  CONSTRAINT `fk_afectado_centro_apoyo`
    FOREIGN KEY (`centro_apoyo_idcentro_apoyo`)
    REFERENCES `SDE`.`centro_apoyo` (`idcentro_apoyo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SDE`.`especialidad`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `SDE`.`especialidad` ;

CREATE TABLE IF NOT EXISTS `SDE`.`especialidad` (
  `idespecialidad` INT NOT NULL AUTO_INCREMENT,
  `nombre_especialidad` VARCHAR(45) NULL,
  `descripcion` VARCHAR(100) NULL,
  PRIMARY KEY (`idespecialidad`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SDE`.`especialista`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `SDE`.`especialista` ;

CREATE TABLE IF NOT EXISTS `SDE`.`especialista` (
  `idespecialista` INT NOT NULL AUTO_INCREMENT,
  `nombree` VARCHAR(45) NULL,
  `appe` VARCHAR(45) NULL,
  `apme` VARCHAR(45) NULL,
  `edad` INT NULL,
  `fecha_nac` DATE NULL,
  `centro_apoyo_idcentro_apoyo` INT NOT NULL,
  `especialidad_idespecialidad` INT NOT NULL,
  PRIMARY KEY (`idespecialista`, `centro_apoyo_idcentro_apoyo`, `especialidad_idespecialidad`),
  INDEX `fk_especialista_centro_apoyo1_idx` (`centro_apoyo_idcentro_apoyo` ASC),
  INDEX `fk_especialista_especialidad1_idx` (`especialidad_idespecialidad` ASC),
  CONSTRAINT `fk_especialista_centro_apoyo1`
    FOREIGN KEY (`centro_apoyo_idcentro_apoyo`)
    REFERENCES `SDE`.`centro_apoyo` (`idcentro_apoyo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_especialista_especialidad1`
    FOREIGN KEY (`especialidad_idespecialidad`)
    REFERENCES `SDE`.`especialidad` (`idespecialidad`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SDE`.`voluntario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `SDE`.`voluntario` ;

CREATE TABLE IF NOT EXISTS `SDE`.`voluntario` (
  `idvoluntario` INT NOT NULL AUTO_INCREMENT,
  `nombrev` VARCHAR(45) NULL,
  `appv` VARCHAR(45) NULL,
  `apmv` VARCHAR(45) NULL,
  `edad` INT NULL,
  `ocupacion` VARCHAR(45) NULL,
  `centro_apoyo_idcentro_apoyo` INT NOT NULL,
  PRIMARY KEY (`idvoluntario`, `centro_apoyo_idcentro_apoyo`),
  INDEX `fk_voluntario_centro_apoyo1_idx` (`centro_apoyo_idcentro_apoyo` ASC),
  CONSTRAINT `fk_voluntario_centro_apoyo1`
    FOREIGN KEY (`centro_apoyo_idcentro_apoyo`)
    REFERENCES `SDE`.`centro_apoyo` (`idcentro_apoyo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SDE`.`usuario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `SDE`.`usuario` ;

CREATE TABLE IF NOT EXISTS `SDE`.`usuario` (
  `idusuario` INT NOT NULL AUTO_INCREMENT,
  `nombreu` VARCHAR(45) NULL,
  `password` VARCHAR(45) NULL,
  `voluntario_idvoluntario` INT NULL,
  `especialista_idespecialista` INT NULL,
  `afectado_idafectado` INT NULL,
  PRIMARY KEY (`idusuario`),
  INDEX `fk_usuario_voluntario2_idx` (`voluntario_idvoluntario` ASC),
  INDEX `fk_usuario_especialista1_idx` (`especialista_idespecialista` ASC),
  INDEX `fk_usuario_afectado1_idx` (`afectado_idafectado` ASC),
  CONSTRAINT `fk_usuario_voluntario2`
    FOREIGN KEY (`voluntario_idvoluntario`)
    REFERENCES `SDE`.`voluntario` (`idvoluntario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuario_especialista1`
    FOREIGN KEY (`especialista_idespecialista`)
    REFERENCES `SDE`.`especialista` (`idespecialista`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuario_afectado1`
    FOREIGN KEY (`afectado_idafectado`)
    REFERENCES `SDE`.`afectado` (`idafectado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SDE`.`cuestionario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `SDE`.`cuestionario` ;

CREATE TABLE IF NOT EXISTS `SDE`.`cuestionario` (
  `idcuestionario` INT NOT NULL AUTO_INCREMENT,
  `estado_civil` VARCHAR(45) NULL,
  `hijos` INT NULL,
  `tipo_apoyo` LONGTEXT NULL,
  `afectado_idafectado` INT NOT NULL,
  PRIMARY KEY (`idcuestionario`, `afectado_idafectado`),
  INDEX `fk_cuestionario_afectado1_idx` (`afectado_idafectado` ASC),
  CONSTRAINT `fk_cuestionario_afectado1`
    FOREIGN KEY (`afectado_idafectado`)
    REFERENCES `SDE`.`afectado` (`idafectado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SDE`.`tipo_violencia`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `SDE`.`tipo_violencia` ;

CREATE TABLE IF NOT EXISTS `SDE`.`tipo_violencia` (
  `idtipo_violencia` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL,
  `descripción` VARCHAR(100) NULL,
  PRIMARY KEY (`idtipo_violencia`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SDE`.`horario_especialista`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `SDE`.`horario_especialista` ;

CREATE TABLE IF NOT EXISTS `SDE`.`horario_especialista` (
  `idhorario_especialista` INT NOT NULL AUTO_INCREMENT,
  `día` VARCHAR(10) NULL,
  `hora` VARCHAR(45) NULL,
  `consultorio` VARCHAR(45) NULL,
  `especialista_idespecialista` INT NOT NULL,
  `afectado_idafectado` INT NOT NULL,
  PRIMARY KEY (`idhorario_especialista`, `especialista_idespecialista`, `afectado_idafectado`),
  INDEX `fk_horario_especialista_especialista1_idx` (`especialista_idespecialista` ASC),
  INDEX `fk_horario_especialista_afectado1_idx` (`afectado_idafectado` ASC),
  CONSTRAINT `fk_horario_especialista_especialista1`
    FOREIGN KEY (`especialista_idespecialista`)
    REFERENCES `SDE`.`especialista` (`idespecialista`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_horario_especialista_afectado1`
    FOREIGN KEY (`afectado_idafectado`)
    REFERENCES `SDE`.`afectado` (`idafectado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SDE`.`horario_voluntario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `SDE`.`horario_voluntario` ;

CREATE TABLE IF NOT EXISTS `SDE`.`horario_voluntario` (
  `idhorario_voluntario` INT NOT NULL AUTO_INCREMENT,
  `hora` VARCHAR(45) NULL,
  `lugar` VARCHAR(45) NULL,
  `grupo_personas` VARCHAR(45) NULL,
  PRIMARY KEY (`idhorario_voluntario`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SDE`.`tipo_violencia_cuestionario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `SDE`.`tipo_violencia_cuestionario` ;

CREATE TABLE IF NOT EXISTS `SDE`.`tipo_violencia_cuestionario` (
  `tipo_violencia_idtipo_violencia` INT NOT NULL,
  `cuestionario_idcuestionario` INT NOT NULL,
  PRIMARY KEY (`tipo_violencia_idtipo_violencia`, `cuestionario_idcuestionario`),
  INDEX `fk_tipo_violencia_has_cuestionario_cuestionario1_idx` (`cuestionario_idcuestionario` ASC),
  INDEX `fk_tipo_violencia_has_cuestionario_tipo_violencia1_idx` (`tipo_violencia_idtipo_violencia` ASC),
  CONSTRAINT `fk_tipo_violencia_has_cuestionario_tipo_violencia1`
    FOREIGN KEY (`tipo_violencia_idtipo_violencia`)
    REFERENCES `SDE`.`tipo_violencia` (`idtipo_violencia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tipo_violencia_has_cuestionario_cuestionario1`
    FOREIGN KEY (`cuestionario_idcuestionario`)
    REFERENCES `SDE`.`cuestionario` (`idcuestionario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SDE`.`voluntario_horario_voluntario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `SDE`.`voluntario_horario_voluntario` ;

CREATE TABLE IF NOT EXISTS `SDE`.`voluntario_horario_voluntario` (
  `voluntario_idvoluntario` INT NOT NULL,
  `horario_voluntario_idhorario_voluntario` INT NOT NULL,
  PRIMARY KEY (`voluntario_idvoluntario`, `horario_voluntario_idhorario_voluntario`),
  INDEX `fk_voluntario_has_horario_voluntario_horario_voluntario1_idx` (`horario_voluntario_idhorario_voluntario` ASC),
  INDEX `fk_voluntario_has_horario_voluntario_voluntario1_idx` (`voluntario_idvoluntario` ASC),
  CONSTRAINT `fk_voluntario_has_horario_voluntario_voluntario1`
    FOREIGN KEY (`voluntario_idvoluntario`)
    REFERENCES `SDE`.`voluntario` (`idvoluntario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_voluntario_has_horario_voluntario_horario_voluntario1`
    FOREIGN KEY (`horario_voluntario_idhorario_voluntario`)
    REFERENCES `SDE`.`horario_voluntario` (`idhorario_voluntario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SDE`.`afectado_especialista`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `SDE`.`afectado_especialista` ;

CREATE TABLE IF NOT EXISTS `SDE`.`afectado_especialista` (
  `afectado_idafectado` INT NOT NULL,
  `especialista_idespecialista` INT NOT NULL,
  PRIMARY KEY (`afectado_idafectado`, `especialista_idespecialista`),
  INDEX `fk_afectado_has_especialista_especialista1_idx` (`especialista_idespecialista` ASC),
  INDEX `fk_afectado_has_especialista_afectado1_idx` (`afectado_idafectado` ASC),
  CONSTRAINT `fk_afectado_has_especialista_afectado1`
    FOREIGN KEY (`afectado_idafectado`)
    REFERENCES `SDE`.`afectado` (`idafectado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_afectado_has_especialista_especialista1`
    FOREIGN KEY (`especialista_idespecialista`)
    REFERENCES `SDE`.`especialista` (`idespecialista`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
