create database igreja 
create table padre(
id_padre bigint not null,
nome_padre varchar (50) not null,
id_igreja smallint not null,
primary key (id_igreja),
);
create table secretaria (
id_secretaria bigint not null,
nome_secretaria varchar (50) not null,
id_igreja smallint not null,
primary key (id_secretaria),
);
create table codenadora_lirtugia(
id_ bigint not null,
nome_codenadora_lirtugica varchar (50)not null,
id_igreja smallint not null,
);
c

