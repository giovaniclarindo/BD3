create database bd2;

use bd2;

-- criação tabela alunos
/*
comentário
mais de uma linha
*/

create table alunos (
    id int(11) primary key auto_increment,
    nome varchar(255) not null,
    idade int(3) not null
);

select * from alunos;

 show columns from alunos;
 
 insert into alunos (nome, idade) values ('andré', 96); 
 insert into alunos (nome, idade) values ('giovani', 21); 
 insert into alunos (nome, idade) values ('rafa', 20);
