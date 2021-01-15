create database db_cidade_das_carnes;

use db_cidade_das_carnes;

create table tb_categoria(
	id varchar(4) not null,
    nome_categoria varchar(100) not null,
    promocao boolean not null,
    primary key(nome_categoria)
);

create table tb_produto(
	nome_produto varchar(100) not null,
    valor float not null,
    quantidade int not null,
    gordura boolean not null,
    nome_categoria varchar(100) not null,
    foreign key (nome_categoria) references tb_categoria(nome_categoria),
    primary key (nome_produto)
);

insert into tb_categoria (id, nome_categoria,promocao) values ("0001", "Bovino", true);
insert into tb_categoria (id, nome_categoria,promocao) values ("0002", "Suíno", false);
insert into tb_categoria (id, nome_categoria,promocao) values ("0003", "Cordeiro", false);
insert into tb_categoria (id, nome_categoria,promocao) values ("0004", "Ave", false);
insert into tb_categoria (id, nome_categoria,promocao) values ("0005", "Vegano", true);

insert tb_produto (nome_produto, valor, quantidade, gordura, nome_categoria) values ("Carne moída",18,2,true,"Bovino");
insert tb_produto (nome_produto, valor, quantidade, gordura, nome_categoria) values ("Alcatra",34.67,1,false,"Bovino");
insert tb_produto (nome_produto, valor, quantidade, gordura, nome_categoria) values ("Panceta suína",42,2,true,"Suíno");
insert tb_produto (nome_produto, valor, quantidade, gordura, nome_categoria) values ("Linguiça calabresa",23,3,true,"Suíno");	
insert tb_produto (nome_produto, valor, quantidade, gordura, nome_categoria) values ("Pernil de cordeiro",61.2,1,true,"Cordeiro");
insert tb_produto (nome_produto, valor, quantidade, gordura, nome_categoria) values ("Carre de cordeiro",129,1,true,"Cordeiro");
insert tb_produto (nome_produto, valor, quantidade, gordura, nome_categoria) values ("Coxa de frango",15,3,false,"Ave");
insert tb_produto (nome_produto, valor, quantidade, gordura, nome_categoria) values ("Almôndega vegetal",18.9,4,false,"Vegano");

select * from tb_produto where valor > 50;
select * from tb_produto where valor > 3 and valor < 60;
select * from tb_produto where nome_produto like 'C%';
select * from tb_produto inner join tb_categoria on tb_produto.nome_categoria = tb_categoria.nome_categoria;
select * from tb_produto where nome_categoria = "Cordeiro";