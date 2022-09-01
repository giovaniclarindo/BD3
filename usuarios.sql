CREATE DATABASE bd2;

USE bd2;

CREATE TABLE usuarios (
	id INT(11) PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL
);

ALTER TABLE usuarios
ADD UNIQUE (email);

-- ao tentar inserir o segundo email igual ao primeiro, o  bd irá voltar com uma mensagem de erro, dizendo que nao pode duplicar o campo email, pois este mesmo campo está com a tag UNIQUE
INSERT INTO usuarios (nome, email) VALUES ('André', 'andr@andr.com.br');
INSERT INTO usuarios (nome, email) VALUES ('André 2', 'andr@andr.com.br');
