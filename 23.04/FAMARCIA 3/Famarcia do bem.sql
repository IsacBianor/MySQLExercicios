-- MySQL Script generated by MySQL Workbench
-- Sat Apr 24 13:42:42 2021
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema db_famarcia_do_bem
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema db_famarcia_do_bem
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_famarcia_do_bem` DEFAULT CHARACTER SET utf8 ;
USE `db_famarcia_do_bem` ;

-- -----------------------------------------------------
-- Table `db_famarcia_do_bem`.`tb_categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_famarcia_do_bem`.`tb_categoria` (
  `id_categoria` INT NOT NULL AUTO_INCREMENT,
  `comesticos` TINYINT NOT NULL,
  `remedio` TINYINT NOT NULL,
  `prontos_socorros` TINYINT NOT NULL,
  PRIMARY KEY (`id_categoria`),
  UNIQUE INDEX `id_categoria_UNIQUE` (`id_categoria` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_famarcia_do_bem`.`tb_produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_famarcia_do_bem`.`tb_produto` (
  `id_produto` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `valor` DECIMAL(5,2) NOT NULL,
  `fk_categoria` INT NOT NULL,
  PRIMARY KEY (`id_produto`, `fk_categoria`),
  UNIQUE INDEX `id_produto_UNIQUE` (`id_produto` ASC) VISIBLE,
  INDEX `fk_tb_produto_tb_categoria_idx` (`fk_categoria` ASC) VISIBLE,
  CONSTRAINT `fk_tb_produto_tb_categoria`
    FOREIGN KEY (`fk_categoria`)
    REFERENCES `db_famarcia_do_bem`.`tb_categoria` (`id_categoria`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
