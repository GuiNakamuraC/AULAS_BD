-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE empregado (
cod_empregado int PRIMARY KEY,
nome varchar(255),
rua varchar(255),
num int,
bairro varchar(255),
complemento varchar(255),
cep varchar(255),
rg varchar(255),
cpf varchar(255),
funcao varchar(255),
telefone varchar(255),
email varchar(255),
cod_departamento int
);

CREATE TABLE fabrica (
cod_produto int,
cod_empregado int
FOREIGN KEY (cod_produto) REFERENCES produto (cod_produto),
FOREIGN KEY (cod_empregado) REFERENCES empregado (cod_empregado)
);

CREATE TABLE estoque (
cod_estoque int PRIMARY KEY,
rua varchar(255),
num int,
bairro varchar(255),
complemento varchar(255),
cep varchar(255),
uf varchar(255),
qnt_max int,
qnt_min int,
qnt_produto int,
tipo varchar(255)
);

CREATE TABLE armazena (
cod_estoque int,
cod_produto int,
FOREIGN KEY (cod_estoque) REFERENCES estoque (cod_estoque),
FOREIGN KEY (cod_produto) REFERENCES produto (cod_produto)
);

CREATE TABLE produto (
cod_produto int PRIMARY KEY,
nome varchar(255),
fabricante varchar(255),
data_fab date,
data_ven date,
descricao varchar(255),
preco decimal(10,2)
);

CREATE TABLE departamento (
cod_departamento int PRIMARY KEY,
nome varchar(255),
rua varchar(255),
num int,
bairro varchar(255),
complemento varchar(255),
cep varchar(255),
setor varchar(255),
uf varchar(255)
);

ALTER TABLE empregado ADD FOREIGN KEY(cod_departamento) REFERENCES departamento (cod_departamento)
ALTER TABLE fabrica ADD FOREIGN KEY(cod_produto) REFERENCES produto (cod_produto)
ALTER TABLE armazena ADD FOREIGN KEY(cod_produto) REFERENCES produto (cod_produto)
