CREATE DATABASE bd2;

USE bd2;

CREATE TABLE produtos2 (
	id INT,
    nome VARCHAR(80) NOT NULL
);

ALTER TABLE produtos2
ADD CONSTRAINT PRIMARY KEY (id);

ALTER TABLE produtos2
MODIFY COLUMN id INT(11) NOT NULL AUTO_INCREMENT FIRST;

SHOW COLUMNS FROM produtos2;


CREATE TABLE funcionarios (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(80)
);

ALTER TABLE funcionarios
MODIFY nome VARCHAR(80) NOT NULL;

-- o comando abaixo tem que dar erro porque quero inserir o campo nullo, sendo que acima eu modifiquei o campo nome para not null.
INSERT INTO funcionarios (nome) VALUES (NULL);


CREATE TABLE usuarios (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    UNIQUE (email)
);

-- o segundo insert abaixo não vai dar certo porque o campo email é único, portanto não pode haver o mesmo email nos dois inserts.
INSERT INTO usuarios (nome, email) VALUES ('André', 'andr@andr.com.br');
INSERT INTO usuarios (nome, email) VALUES ('André 2', 'andr@andr.com.br');
