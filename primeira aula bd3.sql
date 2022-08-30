CREATE DATABASE bd3;

USE bd3;

CREATE TABLE alunos (
	id INT(11) PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    idade int(3),
	nascimento DATE DEFAULT NULL
);

-- INSERT
INSERT INTO alunos (nome, idade, nascimento) VALUES ('leo', 10, '2011-03-04');
INSERT INTO alunos (nome, idade, nascimento) VALUES ('juju', 11, '2010-10-08');
INSERT INTO alunos (nome, idade, nascimento) VALUES ('fred', 13, '2008-05-12');
INSERT INTO alunos (nome, idade, nascimento) VALUES ('joao', null, null);
INSERT INTO alunos (nome, idade, nascimento) VALUES ('joao', 14, '2007-07-05');

-- seleciona todos os registros
SELECT * FROM alunos;

-- seleciona somente nome e nascimento
SELECT nome, nascimento FROM alunos;

-- com filtro
SELECT nascimento FROM alunos
WHERE nome = 'fred';

-- filtrar os resultados que tenha o campo nascimento nulo
SELECT * FROM alunos
WHERE nascimento IS NULL;

-- seleciona a lista de todos os nomes sem repetição
SELECT DISTINCT nome
FROM alunos;

-- lista de presença - ordenada em ordem alfabetica
SELECT * FROM alunos
ORDER BY nome ASC;

-- lista de presença - ordenada em ordem de nascimento
SELECT * FROM alunos
ORDER BY nascimento DESC;

-- listar somente dois alunos
SELECT * FROM alunos
LIMIT 2;

select * from alunos
where nome=('joao') and idade=14;

-- media dos valores não null
select avg(idade)
from alunos;

-- Soma dos valores não null
select sum(idade)
from alunos;

-- pega o menor valor
select min(idade)
from alunos;

-- pega o maior valor
select max(idade)
from alunos;

-- continuando aula
create table vendas (
	id int(11) primary key auto_increment,
    produto varchar(255),
    quantidade int(11),
    data_venda date
);


insert into vendas (produto, quantidade, data_venda)
values ('Audi TT', 2, '2022-06-10');
insert into vendas (produto, quantidade, data_venda)
values ('BMW', 3, '2022-05-01');
insert into vendas (produto, quantidade, data_venda)
values ('Ferrari', 10, '2022-07-12');
insert into vendas (produto, quantidade, data_venda)
values ('Masserati', 1, '2022-08-22');
insert into vendas (produto, quantidade, data_venda)
values ('Bentley', 4, '2022-08-30');

-- pegando valores entre um e outro, inclusive ele mesmo
select * from vendas
where
quantidade between 3 and 10;


