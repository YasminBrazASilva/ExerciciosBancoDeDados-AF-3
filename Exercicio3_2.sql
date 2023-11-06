-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema exercicio_af_03
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema exercicio_af_03
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `exercicio_af_03` DEFAULT CHARACTER SET utf8 ;
USE `exercicio_af_03` ;

-- -----------------------------------------------------
-- Table `exercicio_af_03`.`cursos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `exercicio_af_03`.`cursos` (
  `cur_id` INT NOT NULL AUTO_INCREMENT,
  `cur_nome` VARCHAR(45) NOT NULL,
  `cur_area` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`cur_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `exercicio_af_03`.`alunos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `exercicio_af_03`.`alunos` (
  `alu_id` INT NOT NULL AUTO_INCREMENT,
  `alu_nome_completo` VARCHAR(400) NOT NULL,
  `alu_primeiro_nome` VARCHAR(45) NULL,
  `alu_ultimo_sobrenome` VARCHAR(45) NULL,
  `aluno_email` VARCHAR(100) NULL,
  PRIMARY KEY (`alu_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `exercicio_af_03`.`matriculas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `exercicio_af_03`.`matriculas` (
  `mtr_id` INT NOT NULL AUTO_INCREMENT,
  `mtr_status` VARCHAR(10) NULL,
  `mtr_alu_id` INT NOT NULL,
  `mtr_cur_id` INT NOT NULL,
  PRIMARY KEY (`mtr_id`),
  INDEX `fk_matriculas_alunos_idx` (`mtr_alu_id` ASC) VISIBLE,
  INDEX `fk_matriculas_cursos1_idx` (`mtr_cur_id` ASC) VISIBLE,
  CONSTRAINT `fk_matriculas_alunos`
    FOREIGN KEY (`mtr_alu_id`)
    REFERENCES `exercicio_af_03`.`alunos` (`alu_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_matriculas_cursos1`
    FOREIGN KEY (`mtr_cur_id`)
    REFERENCES `exercicio_af_03`.`cursos` (`cur_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
