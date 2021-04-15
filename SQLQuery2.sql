create database univercidade
create table professor(
id bigint not null primary key (id),
nome_professor varchar (50)not null,
sobrenome varchar (60)not null,
);
create table aluno(
id_aluno bigint not null,
nome_aluno varchar (50) not null,
sobrenome_aluno varchar (60) not null,
turma_aluno smallint not null,
primary key (id_aluno),
);
create table turma (
id_turma bigint not null primary key (id_turma),
nome_professo varchar (50) not null,
aluno_matriculados varchar (50)not null,
);
create table mensalidade(
id bigint not null,
data_vencimento date not null,
semeste_inicial smallint not null,
primary key (id),
); 
create table materia(
id_materia bigint not null,
nome_materia varchar (50)not null,
turma smallint not null,
primary key (id_materia),
);
alter table materia
add id bigint not null,
constraint fk_id  foreign key(id)references aluno
insert into aluno (id_aluno,nome_aluno,sobrenome_aluno,turma_aluno)
values (1,'marcos''silva')
alter table aluno
drop column turma_aluno