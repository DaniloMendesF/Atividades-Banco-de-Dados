-- criar um banco de dados
create database db_ecommerce;

use db_ecommerce;

Create table tb_produto(
	id bigint(5) auto_increment,
	nome varchar(20) not null,
    categoria varchar(30) not null,
	valor float not null,
    quantidade int not null,   
    primary key(id)
);

select * from tb_produto where valor > 500;
select * from tb_produto where valor < 500;

insert into tb_produto (nome, categoria, valor, quantidade) values ("Notebook","Informática", 4000 ,1);
insert into tb_produto (nome, categoria, valor, quantidade) values ("Controle para Xbox","Games", 469 ,1);
insert into tb_produto (nome, categoria, valor, quantidade) values ("Mochila Escolar","Papelaria", 113.70 ,3);
insert into tb_produto (nome, categoria, valor, quantidade) values ("Escritorio","Quadro Branco", 104.75 ,2);
insert into tb_produto (nome, categoria, valor, quantidade) values ("PC Gamer","Informática", 2468.90,1);
insert into tb_produto (nome, categoria, valor, quantidade) values ("DVD - Carros","Filmes e Séries", 19.60 ,1);
insert into tb_produto (nome, categoria, valor, quantidade) values ("Guarda Roupa","Móveis", 522.41 ,2);
insert into tb_produto (nome, categoria, valor, quantidade) values ("Reógio Feminino","Reógios", 280.90 ,4);

update tb_produto set valor = 600 where id = 8;


