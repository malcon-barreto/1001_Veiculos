CREATE DATABASE IF NOT EXISTS 1001_veiculos;

USE 1001_veiculos;

CREATE TABLE IF NOT EXISTS usuario(

	id_usuario INT NOT NULL,
    nome VARCHAR(255) NOT NULL,
    senha varchar(255) NOT NULL

);

CREATE TABLE IF NOT EXISTS marca(

	id_marca INT NOT NULL,
    nome_marca VARCHAR(255) NOT NULL

);

CREATE TABLE IF NOT EXISTS veiculo(


	id_veiculo INT NOT NULL,
    nome_veiculo VARCHAR(255) NOT NULL,
    preco VARCHAR(20) NOT NULL,
    id_marca INT NOT NULL

);

CREATE TABLE IF NOT EXISTS cliente(


	id_cliente INT NOT NULL,
    nome_cliente VARCHAR(255) NOT NULL,
    cpf VARCHAR(45) NOT NULL

);

CREATE TABLE IF NOT EXISTS venda(

	id_venda INT NOT NULL,
	id_usuario INT NOT NULL,
    id_veiculo INT NOT NULL, 
	id_cliente INT NOT NULL


);

ALTER TABLE usuario
CHANGE COLUMN id_usuario id_usuario INT AUTO_INCREMENT,
ADD PRIMARY KEY (id_usuario);

ALTER TABLE marca
CHANGE COLUMN id_marca id_marca INT AUTO_INCREMENT,
ADD PRIMARY KEY (id_marca);

ALTER TABLE veiculo
CHANGE COLUMN id_veiculo id_veiculo INT AUTO_INCREMENT,
ADD PRIMARY KEY (id_veiculo);

ALTER TABLE  cliente
CHANGE COLUMN id_cliente id_cliente INT AUTO_INCREMENT,
ADD PRIMARY KEY (id_cliente);

ALTER TABLE venda
CHANGE COLUMN id_venda id_venda INT AUTO_INCREMENT,
ADD PRIMARY KEY (id_venda);


ALTER TABLE venda
ADD CONSTRAINT fk_id_usuario FOREIGN KEY (id_usuario) REFERENCES usuario (id_usuario),
ADD CONSTRAINT fk_nome_veiculo FOREIGN KEY (id_veiculo) REFERENCES veiculo (id_veiculo),
ADD CONSTRAINT fk_cliente FOREIGN KEY (id_cliente) REFERENCES cliente (id_cliente);

ALTER TABLE veiculo
ADD CONSTRAINT fk_id_marca FOREIGN KEY (id_marca) REFERENCES marca (id_marca);







