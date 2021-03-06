-- MySQL Script generated by MySQL Workbench
-- dom 02 dic 2018 22:19:01 CST
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema multi_asistencia
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `multi_asistencia` ;

-- -----------------------------------------------------
-- Schema multi_asistencia
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `multi_asistencia` DEFAULT CHARACTER SET utf8 ;
USE `multi_asistencia` ;

-- -----------------------------------------------------
-- Table `multi_asistencia`.`credenciales`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `multi_asistencia`.`credenciales` ;

CREATE TABLE IF NOT EXISTS `multi_asistencia`.`credenciales` (
  `idcredenciales` INT NOT NULL,
  `correo` VARCHAR(45) NOT NULL,
  `contrasena` CHAR(32) NOT NULL,
  PRIMARY KEY (`idcredenciales`))
ENGINE = InnoDB;

CREATE UNIQUE INDEX `usuario_UNIQUE` ON `multi_asistencia`.`credenciales` (`correo` ASC);


-- -----------------------------------------------------
-- Table `multi_asistencia`.`tipo_usuario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `multi_asistencia`.`tipo_usuario` ;

CREATE TABLE IF NOT EXISTS `multi_asistencia`.`tipo_usuario` (
  `idtipo_usuario` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idtipo_usuario`))
ENGINE = InnoDB;

CREATE UNIQUE INDEX `nombre_UNIQUE` ON `multi_asistencia`.`tipo_usuario` (`nombre` ASC);


-- -----------------------------------------------------
-- Table `multi_asistencia`.`clientes`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `multi_asistencia`.`clientes` ;

CREATE TABLE IF NOT EXISTS `multi_asistencia`.`clientes` (
  `idclientes` INT NOT NULL,
  `idcredenciales` INT NOT NULL,
  `nombre` VARCHAR(25) NOT NULL,
  `tipo_usuario` INT NOT NULL,
  `primer_apellido` VARCHAR(20) NULL,
  `segundo_apellido` VARCHAR(20) NULL,
  PRIMARY KEY (`idclientes`),
  CONSTRAINT `fk_clientes_1`
    FOREIGN KEY (`idcredenciales`)
    REFERENCES `multi_asistencia`.`credenciales` (`idcredenciales`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_clientes_2`
    FOREIGN KEY (`tipo_usuario`)
    REFERENCES `multi_asistencia`.`tipo_usuario` (`idtipo_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE UNIQUE INDEX `credenciales_UNIQUE` ON `multi_asistencia`.`clientes` (`idcredenciales` ASC);

CREATE INDEX `fk_clientes_2_idx` ON `multi_asistencia`.`clientes` (`tipo_usuario` ASC);


-- -----------------------------------------------------
-- Table `multi_asistencia`.`poliza`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `multi_asistencia`.`poliza` ;

CREATE TABLE IF NOT EXISTS `multi_asistencia`.`poliza` (
  `idpoliza` INT NOT NULL,
  `nombre` VARCHAR(45) NULL,
  PRIMARY KEY (`idpoliza`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `multi_asistencia`.`cliente_por_poliza`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `multi_asistencia`.`cliente_por_poliza` ;

CREATE TABLE IF NOT EXISTS `multi_asistencia`.`cliente_por_poliza` (
  `idclientes` INT NOT NULL,
  `idpoliza` INT NOT NULL,
  PRIMARY KEY (`idclientes`, `idpoliza`),
  CONSTRAINT `fk_cliente_por_poliza_1`
    FOREIGN KEY (`idclientes`)
    REFERENCES `multi_asistencia`.`clientes` (`idclientes`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cliente_por_poliza_2`
    FOREIGN KEY (`idpoliza`)
    REFERENCES `multi_asistencia`.`poliza` (`idpoliza`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_cliente_por_poliza_2_idx` ON `multi_asistencia`.`cliente_por_poliza` (`idpoliza` ASC);


-- -----------------------------------------------------
-- Table `multi_asistencia`.`cobertura`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `multi_asistencia`.`cobertura` ;

CREATE TABLE IF NOT EXISTS `multi_asistencia`.`cobertura` (
  `idcobertura` INT NOT NULL,
  `nombre` VARCHAR(45) NULL,
  PRIMARY KEY (`idcobertura`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `multi_asistencia`.`cobertura_por_poliza`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `multi_asistencia`.`cobertura_por_poliza` ;

CREATE TABLE IF NOT EXISTS `multi_asistencia`.`cobertura_por_poliza` (
  `idpoliza` INT NOT NULL,
  `idcobertura` INT NOT NULL,
  PRIMARY KEY (`idpoliza`, `idcobertura`),
  CONSTRAINT `fk_cobertura_por_poliza_1`
    FOREIGN KEY (`idpoliza`)
    REFERENCES `multi_asistencia`.`poliza` (`idpoliza`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_cobertura_por_poliza_2`
    FOREIGN KEY (`idcobertura`)
    REFERENCES `multi_asistencia`.`cobertura` (`idcobertura`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;

CREATE INDEX `fk_cobertura_por_poliza_2_idx` ON `multi_asistencia`.`cobertura_por_poliza` (`idcobertura` ASC);


-- -----------------------------------------------------
-- Table `multi_asistencia`.`descripcion_cobertura`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `multi_asistencia`.`descripcion_cobertura` ;

CREATE TABLE IF NOT EXISTS `multi_asistencia`.`descripcion_cobertura` (
  `iddescripcion_cobertura` INT NOT NULL,
  `idcobertura` INT NOT NULL,
  PRIMARY KEY (`iddescripcion_cobertura`),
  CONSTRAINT `fk_descripcion_cobertura_1`
    FOREIGN KEY (`idcobertura`)
    REFERENCES `multi_asistencia`.`cobertura` (`idcobertura`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE UNIQUE INDEX `idcobertura_UNIQUE` ON `multi_asistencia`.`descripcion_cobertura` (`idcobertura` ASC);


-- -----------------------------------------------------
-- Table `multi_asistencia`.`servicio`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `multi_asistencia`.`servicio` ;

CREATE TABLE IF NOT EXISTS `multi_asistencia`.`servicio` (
  `idservicio` INT NOT NULL,
  `nombre` VARCHAR(45) NULL,
  PRIMARY KEY (`idservicio`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `multi_asistencia`.`descripcion_servicio`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `multi_asistencia`.`descripcion_servicio` ;

CREATE TABLE IF NOT EXISTS `multi_asistencia`.`descripcion_servicio` (
  `iddescripcion_servicio` INT NOT NULL,
  `idservicio` INT NOT NULL,
  PRIMARY KEY (`iddescripcion_servicio`),
  CONSTRAINT `fk_descripcion_servicio_1`
    FOREIGN KEY (`idservicio`)
    REFERENCES `multi_asistencia`.`servicio` (`idservicio`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;

CREATE INDEX `fk_descripcion_servicio_1_idx` ON `multi_asistencia`.`descripcion_servicio` (`idservicio` ASC);


-- -----------------------------------------------------
-- Table `multi_asistencia`.`servicio_por_cobertura`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `multi_asistencia`.`servicio_por_cobertura` ;

CREATE TABLE IF NOT EXISTS `multi_asistencia`.`servicio_por_cobertura` (
  `idcobertura` INT NOT NULL,
  `idservicio` INT NOT NULL,
  PRIMARY KEY (`idcobertura`, `idservicio`),
  CONSTRAINT `fk_servicio_por_cobertura_1`
    FOREIGN KEY (`idservicio`)
    REFERENCES `multi_asistencia`.`servicio` (`idservicio`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_servicio_por_cobertura_2`
    FOREIGN KEY (`idcobertura`)
    REFERENCES `multi_asistencia`.`cobertura` (`idcobertura`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;

CREATE INDEX `fk_servicio_por_cobertura_1_idx` ON `multi_asistencia`.`servicio_por_cobertura` (`idservicio` ASC);


-- -----------------------------------------------------
-- Table `multi_asistencia`.`contacto`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `multi_asistencia`.`contacto` ;

CREATE TABLE IF NOT EXISTS `multi_asistencia`.`contacto` (
  `idcontacto` INT NOT NULL,
  `nombre` VARCHAR(45) NULL,
  PRIMARY KEY (`idcontacto`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `multi_asistencia`.`contacto_por_servicio`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `multi_asistencia`.`contacto_por_servicio` ;

CREATE TABLE IF NOT EXISTS `multi_asistencia`.`contacto_por_servicio` (
  `idcontacto` INT NOT NULL,
  `idservicio` INT NOT NULL,
  PRIMARY KEY (`idcontacto`, `idservicio`),
  CONSTRAINT `fk_contacto_por_servicio_1`
    FOREIGN KEY (`idcontacto`)
    REFERENCES `multi_asistencia`.`contacto` (`idcontacto`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_contacto_por_servicio_2`
    FOREIGN KEY (`idservicio`)
    REFERENCES `multi_asistencia`.`servicio` (`idservicio`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_contacto_por_servicio_2_idx` ON `multi_asistencia`.`contacto_por_servicio` (`idservicio` ASC);


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
