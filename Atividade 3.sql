create database db_escola;

use db_escola;

create table tb_estudantes(
	id bigint(5) auto_increment,
	nome varchar(100) not null,
    sexo char not null,
    nota float not null,
    aprovacao boolean,
    primary key(id)
);

select * from tb_estudantes where nota<7;
select * from tb_estudantes where nota>7;

insert into tb_estudantes (nome,sexo,nota,aprovacao) values ("Danilo",'M', 10 , true);
insert into tb_estudantes (nome,sexo,nota,aprovacao) values ("José",'M', 2 , false);
insert into tb_estudantes (nome,sexo,nota,aprovacao) values ("Amanda",'F', 9 , true);
insert into tb_estudantes (nome,sexo,nota,aprovacao) values ("Camila",'F', 6 , false);
insert into tb_estudantes (nome,sexo,nota,aprovacao) values ("Roberta",'F', 5 , false);
insert into tb_estudantes (nome,sexo,nota,aprovacao) values ("Marcos",'M', 7.5 , true);
insert into tb_estudantes (nome,sexo,nota,aprovacao) values ("Juliana",'F', 8.5 , true);
insert into tb_estudantes (nome,sexo,nota,aprovacao) values ("Jorge",'M', 3.5 , false);

update tb_estudantes set nota = 1 where id = 2; 


