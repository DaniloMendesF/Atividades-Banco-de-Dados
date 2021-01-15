create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
	nome_classe varchar(30) not null,
    nome_subclasse varchar(30) not null,	
	especialidade varchar (1000) not null,
    primary key(nome_classe)
);

create table  tb_personagem(
	nome_personagem varchar(30) not null,
    nome_classe varchar(30) not null,
    sexo char not null,
    ataque bigint(4) not null,
    defesa bigint(4) not null,
    foreign key(nome_classe) references tb_classe(nome_classe),
    primary key (nome_personagem)
);

insert into tb_classe (nome_classe, nome_subclasse,especialidade) values ("Selvagem","Bárbaro","Ataque físico");
insert into tb_classe (nome_classe, nome_subclasse,especialidade) values ("Humano","Guerreiro","Ataque físico");
insert into tb_classe (nome_classe, nome_subclasse,especialidade) values ("Abissal","Espiritualista","Ataque mágico");
insert into tb_classe (nome_classe, nome_subclasse,especialidade) values ("Alado","Sacerdote","Ataque mágico");
insert into tb_classe (nome_classe, nome_subclasse,especialidade) values ("Guardião","Místico","Ataque mágico");

insert into tb_personagem (nome_personagem,nome_classe,sexo,ataque,defesa) values ("Riven","Selvagem",'F',1500,2300);
insert into tb_personagem (nome_personagem,nome_classe,sexo,ataque,defesa) values ("Draven","Selvagem",'M',1800,1000);
insert into tb_personagem (nome_personagem,nome_classe,sexo,ataque,defesa) values ("Camille","Guardião",'F',3200,1800);
insert into tb_personagem (nome_personagem,nome_classe,sexo,ataque,defesa) values ("Talon","Alado",'F',500,200);
insert into tb_personagem (nome_personagem,nome_classe,sexo,ataque,defesa) values ("Pyke","Selvagem",'M',1200,3000);
insert into tb_personagem (nome_personagem,nome_classe,sexo,ataque,defesa) values ("Kindred","Guardião",'M',2500,100);
insert into tb_personagem (nome_personagem,nome_classe,sexo,ataque,defesa) values ("Kayle","Alado",'F',3900,600);
insert into tb_personagem (nome_personagem,nome_classe,sexo,ataque,defesa) values ("Morgana","Alado",'F',900,1200);

select * from tb_personagem where ataque > 2000;
select * from tb_personagem where defesa > 1000 and defesa < 2000;
select * from tb_personagem where nome_personagem like 'c%';
select * from tb_personagem inner join tb_classe on tb_classe.nome_classe = tb_personagem.nome_classe;
select * from tb_personagem where nome_classe = "Selvagem";