
CREATE SCHEMA IF NOT EXISTS `acme` DEFAULT CHARACTER SET utf8 ;
USE `acme` ;

-- -----------------------------------------------------
-- Table `acme`.`usuario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `acme`.`usuario` ;

CREATE TABLE IF NOT EXISTS `acme`.`usuario` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `cedula` INT NOT NULL,
  `primer_nombre` VARCHAR(45) NOT NULL,
  `segundo_nombre` VARCHAR(45) NOT NULL,
  `apellidos` VARCHAR(45) NOT NULL,
  `direccion` VARCHAR(45) NOT NULL,
  `ciudad` VARCHAR(45) NOT NULL,
  `telefono` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `acme`.`propietario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `acme`.`propietario` ;

CREATE TABLE IF NOT EXISTS `acme`.`propietario` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `usuario_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_propietario_usuario1_idx` (`usuario_id` ASC) ,
  CONSTRAINT `fk_propietario_usuario1`
    FOREIGN KEY (`usuario_id`)
    REFERENCES `acme`.`usuario` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `acme`.`conductor`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `acme`.`conductor` ;

CREATE TABLE IF NOT EXISTS `acme`.`conductor` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `usuario_id` INT NOT NULL,
  INDEX `fk_conductor_usuario1_idx` (`usuario_id` ASC),
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_conductor_usuario1`
    FOREIGN KEY (`usuario_id`)
    REFERENCES `acme`.`usuario` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `acme`.`vehiculos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `acme`.`vehiculos` ;

CREATE TABLE IF NOT EXISTS `acme`.`vehiculos` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `placa` VARCHAR(45) NOT NULL,
  `color` VARCHAR(45) NOT NULL,
  `marca` VARCHAR(45) NOT NULL,
  `tipo_vehiculo` VARCHAR(45) NOT NULL,
  `propietario_id` INT NOT NULL,
  `conductor_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_vehiculos_propietario1_idx` (`propietario_id` ASC),
  INDEX `fk_vehiculos_conductor1_idx` (`conductor_id` ASC),
  CONSTRAINT `fk_vehiculos_propietario1`
    FOREIGN KEY (`propietario_id`)
    REFERENCES `acme`.`propietario` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_vehiculos_conductor1`
    FOREIGN KEY (`conductor_id`)
    REFERENCES `acme`.`conductor` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

