alter table aluno 
drop column matricula 

alter table aluno 
add nome_aluno varchar not null
alter table aluno 
drop column turma 
alter table aluno
add sobrenome_aluno varchar not null
