create database bd2;


use bd2;

-- 
create table produtos (
    id int primary key auto_increment,
    nome varchar(80) not null
);


-- inserir dados
insert into produtos (nome) values ('camisa');
insert into produtos (nome) values ('calça');
insert into produtos (nome) values ('meia');

-- seleciona todos os dados da tabela produtos
select * from produtos;

-- mostrar a parte interna da tabela
show columns from produtos;

-- altera a tabela
alter table produtos
add descricao text;

alter table produtos
add valor float;

alter table produtos
add observacao varchar(80);

-- tira um campo da tabela
alter table produtos
drop column descricao;
