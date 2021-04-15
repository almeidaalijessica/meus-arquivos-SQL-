create database faculdade1
create table aluno(
id_matricula char (9) not null,
nome varchar (30),
constraint pk_aluno primary key (id_matricula),
);
create table diciplina(
id_diciplina char (6)not null,
nome varchar (30),
constraint pk_discilina primary key (id_diciplina),
);
create table professor(
id_professor char (3) not null,
nome varchar (30),
constraint pk_professor primary key (id_professor),
);
create table turma(
id_disciplina char(6) not null,
id_turma char (1) not null,
horas integer not null,
id_professor char (3) not null,
constraint pk_turma primary key (id_disciplina,id_turma),
constraint fk_turma1 foreign key (id_professor)references professor (id_professor),
constraint fk_turma2 foreign key (id_disciplina)references diciplina (id_diciplina) on delete cascade,
);
create table matricula(
id_matricula char(9) not null,
id_disciplina char (6),
id_turma char (1) not null,
constraint pk_matricula primary key (id_matricula,id_disciplina,id_turma),
constraint fk_matricula1_turma foreign key (id_disciplina,id_turma)references turma(id_disciplina,id_turma) on delete cascade,
constraint fk_matricula2_aluno foreign key (id_matricula)references aluno (id_matricula) on delete cascade,
);
insert into aluno (id_matricula,nome)values ('200215005','joao');
insert into aluno (id_matricula,nome)values ('200215006','lucas');
insert into aluno (id_matricula,nome)values ('200215007','pedro');
insert into aluno (id_matricula,nome)values ('200215008','alice');
insert into aluno (id_matricula,nome)values ('200215009','felix');
insert into aluno (id_matricula,nome)values ('2002150010','olavo');
insert into aluno (id_matricula,nome)values ('2002150011','angela');

insert into diciplina(id_diciplina,nome)values ('ínfoo3','engenharina de software');
insert into diciplina(id_diciplina,nome)values ('ínfoo4','banco de dados');
insert into diciplina(id_diciplina,nome)values ('ínfoo5','algoritimo');
insert into diciplina(id_diciplina,nome)values ('ínfoo6','estrutura de dados');

insert into professor(id_professor,nome)values ('001','paulo');
insert into professor(id_professor,nome)values ('002','ricado');
insert into professor (id_professor,nome)values ('003','roberta');
insert into professor (id_professor,nome)values ('004','sonia');
insert into professor(id_professor,nome)values ('005','ana lucia');

insert into turma(id_disciplina,id_turma,id_professor,horas)values ('inf003','a',4,'001');
insert into turma(id_disciplina,id_turma,id_professor,horas)values ('inf003','b',4,'002');
insert into turma(id_disciplina,id_turma,id_professor,horas)values ('inf004','a',5,'003');
insert into turma(id_disciplina,id_turma,id_professor,horas)values ('inf004','b',5,'003');
insert into turma(id_disciplina,id_turma,id_professor,horas)values ('inf005','a',4,'001');
insert into turma(id_disciplina,id_turma,id_professor,horas)values ('inf005','b',4,'004');
insert into turma(id_disciplina,id_turma,id_professor,horas)values ('inf006','a',4,'002');


insert into matricula(id_matricula,id_disciplina,id_turma)values ('inf003','a',4,'001');
insert into turma(id_disciplina,id_turma,id_professor,horas)values ('inf003','b',4,'002');
insert into turma(id_disciplina,id_turma,id_professor,horas)values ('inf004','a',5,'003');
insert into turma(id_disciplina,id_turma,id_professor,horas)values ('inf004','b',5,'003');
insert into turma(id_disciplina,id_turma,id_professor,horas)values ('inf005','a',4,'001');
insert into turma(id_disciplina,id_turma,id_professor,horas)values ('inf005','b',4,'004');
insert into turma(id_disciplina,id_turma,id_professor,horas)values ('inf006','a',4,'002');
