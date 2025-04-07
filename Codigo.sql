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
-- Table `mydb`.`Usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Usuario` (
  `idUsuario` INT NOT NULL AUTO_INCREMENT,
  `Tipo` VARCHAR(45) NOT NULL,
  `Senha` VARCHAR(255) NOT NULL,
  `Usuario` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idUsuario`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Detalhe_Produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Detalhe_Produto` (
  `idDetalhe_Produto` INT NOT NULL AUTO_INCREMENT,
  `Material_de_fabricacao` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idDetalhe_Produto`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Produto` (
  `idProduto` INT NOT NULL AUTO_INCREMENT,
  `Preco` DECIMAL(10,2) NOT NULL,
  `Descricao` VARCHAR(45) NOT NULL,
  `Codigo` VARCHAR(45) NOT NULL,
  `Nome` VARCHAR(45) NOT NULL,
  `idDetalhe_Produto` INT NOT NULL,
  PRIMARY KEY (`idProduto`, `idDetalhe_Produto`),
  UNIQUE INDEX `Codigo_UNIQUE` (`Codigo` ASC) VISIBLE,
  INDEX `fk_Produto_Detalhe_Produto1_idx` (`idDetalhe_Produto` ASC) VISIBLE,
  CONSTRAINT `fk_Produto_Detalhe_Produto1`
    FOREIGN KEY (`idDetalhe_Produto`)
    REFERENCES `mydb`.`Detalhe_Produto` (`idDetalhe_Produto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Estoque`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Estoque` (
  `idEstoque` INT NOT NULL AUTO_INCREMENT,
  `Quantidade` INT NOT NULL,
  `Localizacao` VARCHAR(45) NOT NULL,
  `Produto_idProduto` INT NOT NULL,
  PRIMARY KEY (`idEstoque`, `Produto_idProduto`),
  INDEX `fk_Estoque_Produto1_idx` (`Produto_idProduto` ASC) VISIBLE,
  CONSTRAINT `fk_Estoque_Produto1`
    FOREIGN KEY (`Produto_idProduto`)
    REFERENCES `mydb`.`Produto` (`idProduto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Venda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Venda` (
  `idVenda` INT NOT NULL AUTO_INCREMENT,
  `Data_venda` DATETIME NOT NULL,
  `idUsuario` INT NOT NULL,
  PRIMARY KEY (`idVenda`, `idUsuario`),
  INDEX `fk_Venda_Usuario_idx` (`idUsuario` ASC) VISIBLE,
  CONSTRAINT `fk_Venda_Usuario`
    FOREIGN KEY (`idUsuario`)
    REFERENCES `mydb`.`Usuario` (`idUsuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Itens_Venda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Itens_Venda` (
  `idItens_Venda` INT NOT NULL AUTO_INCREMENT,
  `Quantidade` INT NOT NULL,
  `Preco_unitario` DECIMAL(10,2) NOT NULL,
  `Produto_idProduto` INT NOT NULL,
  `Venda_idVenda` INT NOT NULL,
  PRIMARY KEY (`idItens_Venda`, `Produto_idProduto`, `Venda_idVenda`),
  INDEX `fk_Itens_Venda_Produto1_idx` (`Produto_idProduto` ASC) VISIBLE,
  INDEX `fk_Itens_Venda_Venda1_idx` (`Venda_idVenda` ASC) VISIBLE,
  CONSTRAINT `fk_Itens_Venda_Produto1`
    FOREIGN KEY (`Produto_idProduto`)
    REFERENCES `mydb`.`Produto` (`idProduto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Itens_Venda_Venda1`
    FOREIGN KEY (`Venda_idVenda`)
    REFERENCES `mydb`.`Venda` (`idVenda`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
