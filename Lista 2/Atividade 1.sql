-- criar um banco de dados
create database db_servico_rh;

use db_servico_rh;

Create table tb_funcionario(
	id bigint(5) auto_increment,
	nome varchar(20) not null,
    cpf varchar(11) not null,
    idade int not null,
    salario int not null,
    cargo varchar(100),
    primary key(id)
);

select * from tb_funcionario where salario > 2000;
select * from tb_funcionario where salario < 2000;

insert into tb_funcionario (nome, cpf, idade, salario, cargo) values ("Danilo","06412356723", 25 ,4000 ,"Supervisor manutenção");
insert into tb_funcionario (nome, cpf, idade, salario, cargo) values ("Marcelo","07489104710", 32 ,4500 ,"Supervisor produção");
insert into tb_funcionario (nome, cpf, idade, salario, cargo) values ("Amanda","84972580578", 27 ,8000 ,"Gerente Regional");
insert into tb_funcionario (nome, cpf, idade, salario, cargo) values ("Camila","13981093809", 45 ,15000 ,"Diretora");
insert into tb_funcionario (nome, cpf, idade, salario, cargo) values ("Matheus","48190812904", 25 ,4000 ,"Supervisor manutenção");

update tb_funcionario set salario = 1000 where id = 1;


