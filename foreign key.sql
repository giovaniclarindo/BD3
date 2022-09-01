CREATE DATABASE bd2;

USE bd2;

CREATE TABLE categorias (
	id INT(11) NOT NULL AUTO_INCREMENT,
    nome VARCHAR(200) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE produtos (
	id INT(11) NOT NULL AUTO_INCREMENT,
    nome VARCHAR(80) NOT NULL,
    valor FLOAT NOT NULL,
    categoria_id INT(11) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES categorias (id) -- FOREIGN KEY é uma chave utilizada para estabelecer relação entre duas tabelas
);
