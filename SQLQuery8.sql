create database empresa
create table funcionario(
id_funcionario smallint not null,
nome_sobrenome varchar not null,
sobrenome_fucionario varchar not null,
primary key (id_funcionario),
);
create table cliente (
id_cliente smallint not null,
nome_cliente varchar not null,
sobrenome_cliente varchar not null,
primary key (id_cliente),
);
create table produto(
id_produto smallint not null,
nome_produto varchar not null,
tipo_produto varchar not null,
primary key (id_produto)
);



