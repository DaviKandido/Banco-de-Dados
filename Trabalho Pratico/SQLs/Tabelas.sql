-- -----------------------------------------------------
-- Schema verbosocial
-- -----------------------------------------------------
-- CREATE SCHEMA IF NOT EXISTS verbosocial DEFAULT CHARACTER SET utf8 ;
-- USE verbosocial;

-- -----------------------------------------------------
-- Table verbosocial.Pessoa
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Pessoa (
  cpf VARCHAR(11) NOT NULL,
  nome VARCHAR(100) NOT NULL,
  telefone VARCHAR(11) NOT NULL,
  email VARCHAR(255) NOT NULL,
  bairro VARCHAR(50) NOT NULL,
  rua VARCHAR(50) NOT NULL,
  numero VARCHAR(10) NOT NULL
);



-- -----------------------------------------------------
-- Table verbosocial.Instituicao
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Instituicao (
  cnpj VARCHAR(14) NOT NULL,
  nome VARCHAR(100) NOT NULL,
  telefone VARCHAR(11) NOT NULL,
  email VARCHAR(255) NOT NULL,
  bairro VARCHAR(50) NOT NULL,
  rua VARCHAR(50) NOT NULL,
  numero VARCHAR(10) NOT NULL
);



-- -----------------------------------------------------
-- Table verbosocial.Receptor
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Receptor (
  cpf VARCHAR(11) NOT NULL,
  nome VARCHAR(100) NOT NULL,
  telefone VARCHAR(11) NULL,
  email VARCHAR(255) NULL,
  bairro VARCHAR(50) NULL,
  rua VARCHAR(50) NULL,
  numero VARCHAR(10) NULL
);


-- -----------------------------------------------------
-- Table verbosocial.Doacao
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Doacao (
  id INT NOT NULL,
  data DATE NOT NULL,
  finalidade VARCHAR(50) NOT NULL,
  origem VARCHAR(20) NOT NULL,
  Instituicao_cnpj VARCHAR(14) NULL,
  Pessoa_cpf VARCHAR(11) NULL,
  Receptor_cpf VARCHAR(11) NULL
);



-- -----------------------------------------------------
-- Table verbosocial.Item
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Item (
  id INT NOT NULL,
  tipo VARCHAR(45) NOT NULL,
  quantidade INT NOT NULL,
  descricao VARCHAR(500) NULL
);


-- -----------------------------------------------------
-- Table verbosocial.Item_da_Doacao
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Item_da_Doacao (
  Doacao_id INT NOT NULL,
  Item_id INT NOT NULL
);



-- -----------------------------------------------------
-- Table verbosocial.Estoque
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Estoque (
  numero_registro INT NOT NULL,
  preco DECIMAL(10,2) NOT NULL,
  Item_id INT NOT NULL
);



-- -----------------------------------------------------
-- Table verbosocial.Funcionario
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Funcionario (
  cpf VARCHAR(11) NOT NULL,
  nome VARCHAR(100) NOT NULL,
  descricao VARCHAR(255) NULL,
  telefone VARCHAR(11) NOT NULL,
  email VARCHAR(255) NOT NULL,
  tipo VARCHAR(45) NOT NULL,
  voluntario BOOLEAN NOT NULL DEFAULT FALSE,
  salario DECIMAL(10,2) NULL,
  gestor_cpf VARCHAR(11) NULL
);




-- -----------------------------------------------------
-- Table verbosocial.Cliente
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Cliente (
  cpf VARCHAR(11) NOT NULL,
  nome VARCHAR(100) NOT NULL,
  telefone VARCHAR(11) NOT NULL
);


-- -----------------------------------------------------
-- Table verbosocial.Venda
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Venda (
  id INT NOT NULL,
  valor DECIMAL(10,2) NOT NULL,
  data DATE NOT NULL,
  forma_pagamento VARCHAR(50) NOT NULL,
  Estoque_numero_registro INT NOT NULL,
  Estoque_Item_id INT NOT NULL,
  Funcionario_cpf VARCHAR(11) NOT NULL,
  Cliente_cpf VARCHAR(11) NOT NULL
);




-- -----------------------------------------------------
-- Table verbosocial.Gerencia
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Gerencia (
  Funcionario_cpf VARCHAR(11) NOT NULL,
  Doacao_id INT NOT NULL
);


