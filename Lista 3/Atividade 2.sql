create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
	id varchar(5) not null,
    nome_categoria varchar(100) not null,
    promocao boolean not null,
    primary key(nome_categoria)
);

create table  tb_pizza(
	nome_pizza varchar(100) not null,
    valor float not null,
    quantidade int not null,
    ingredientes varchar(255) not null,
    nome_categoria varchar(100) not null,
    borda_recheada boolean not null,
    foreign key (nome_categoria) references tb_categoria(nome_categoria),
    primary key (nome_pizza)
);

insert into tb_categoria (id, nome_categoria,promocao) values ("0001", "Pizza", true);
insert into tb_categoria (id, nome_categoria,promocao) values ("0002", "Sanduíches", false);
insert into tb_categoria (id, nome_categoria,promocao) values ("0003", "Acompanhamentos", false);
insert into tb_categoria (id, nome_categoria,promocao) values ("0004", "Calzone", false);
insert into tb_categoria (id, nome_categoria,promocao) values ("0005", "Bebidas", true);

insert into tb_pizza (nome_categoria,nome_pizza,valor,quantidade,ingredientes,borda_recheada) values ("Pizza","3 queijos", "50.99",1,"Mussarela, requeijão, oregano e parmesão ralado",true);
insert into tb_pizza (nome_categoria,nome_pizza,valor,quantidade,ingredientes,borda_recheada) values ("Pizza","Frango com requeijão", "32",2,"Frango desfiado, cebola, oregano e requeijão",false);
insert into tb_pizza (nome_categoria,nome_pizza,valor,quantidade,ingredientes,borda_recheada) values ("Pizza","Bauru", "65",1,"Mussarela, presunto, requeijão, oregano e tomate",true);
insert into tb_pizza (nome_categoria,nome_pizza,valor,quantidade,ingredientes,borda_recheada) values ("Pizza","Calabresa", "27",2,"Mussarela, calabresa e cebola, oregano",false);
insert into tb_pizza (nome_categoria,nome_pizza,valor,quantidade,ingredientes,borda_recheada) values ("Pizza","Mussarela", "45",1,"Queijo mussarela e oregano",true);
insert into tb_pizza (nome_categoria,nome_pizza,valor,quantidade,ingredientes,borda_recheada) values ("Pizza","Margherita", "80",3,"Mussarela, tomate, oregano e manjericão",false);
insert into tb_pizza (nome_categoria,nome_pizza,valor,quantidade,ingredientes,borda_recheada) values ("Pizza","Pepperoni", "65",1,"Mussarela, oregano e pepperon",true);
insert into tb_pizza (nome_categoria,nome_pizza,valor,quantidade,ingredientes,borda_recheada) values ("Pizza","Pão de alho", "12",2,"Mussarela, oregano, pasta de pão de alho, pão e parmesão",false);

select * from tb_pizza where valor > 45;
select * from tb_pizza where valor > 29 and valor < 60;
select * from tb_pizza where nome_pizza like 'C%';
select * from tb_pizza inner join tb_categoria on tb_pizza.nome_categoria = tb_categoria.nome_categoria;
select * from tb_pizza where borda_recheada = true;