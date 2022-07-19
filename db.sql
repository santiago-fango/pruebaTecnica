
CREATE SCHEMA IF NOT EXISTS `acme` DEFAULT CHARACTER SET utf8 ;
USE `acme` ;

-- -----------------------------------------------------
-- Table `acme`.`propietario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `acme`.`propietario` ;

CREATE TABLE IF NOT EXISTS `acme`.`propietario` (
  `cedula` INT NOT NULL,
  `primer_nombre` VARCHAR(45) NOT NULL,
  `segundo_nombre` VARCHAR(45) NOT NULL,
  `apellidos` VARCHAR(45) NOT NULL,
  `direccion` VARCHAR(45) NOT NULL,
  `ciudad` VARCHAR(45) NOT NULL,
  `telefono` INT NOT NULL,
  PRIMARY KEY (`cedula`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `acme`.`conductor`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `acme`.`conductor` ;

CREATE TABLE IF NOT EXISTS `acme`.`conductor` (
  `cedula` INT NOT NULL,
  `primer_nombre` VARCHAR(45) NOT NULL,
  `segundo_nombre` VARCHAR(45) NOT NULL,
  `apellidos` VARCHAR(45) NOT NULL,
  `direccion` VARCHAR(45) NOT NULL,
  `ciudad` VARCHAR(45) NOT NULL,
  `telefono` INT NOT NULL,
  PRIMARY KEY (`cedula`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `acme`.`vehiculos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `acme`.`vehiculos` ;

CREATE TABLE IF NOT EXISTS `acme`.`vehiculos` (
  `placa` VARCHAR(45) NOT NULL,
  `color` VARCHAR(45) NOT NULL,
  `marca` VARCHAR(45) NOT NULL,
  `tipo_vehiculo` VARCHAR(45) NOT NULL,
  `propietario_cedula` INT NOT NULL,
  `conductor_cedula` INT NOT NULL,
  PRIMARY KEY (`placa`),
  INDEX `fk_vehiculos_propietario_idx` (`propietario_cedula` ASC),
  INDEX `fk_vehiculos_conductor1_idx` (`conductor_cedula` ASC),
  CONSTRAINT `fk_vehiculos_propietario`
    FOREIGN KEY (`propietario_cedula`)
    REFERENCES `acme`.`propietario` (`cedula`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_vehiculos_conductor1`
    FOREIGN KEY (`conductor_cedula`)
    REFERENCES `acme`.`conductor` (`cedula`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
