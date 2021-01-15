create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
	id varchar(5) not null,
    nome_categoria varchar(100) not null,
    promocao boolean not null,
    primary key(nome_categoria)
);

create table tb_produto(
	nome_produto varchar(100) not null,
    valor float not null,
    quantidade int not null,
    unidade varchar(255) not null,
    nome_categoria varchar(100) not null,
    desconto int not null,
    foreign key (nome_categoria) references tb_categoria(nome_categoria),
    primary key (nome_produto)
);

insert into tb_categoria (id, nome_categoria,promocao) values ("0001", "Medicamentos", true);
insert into tb_categoria (id, nome_categoria,promocao) values ("0002", "Genéricos", false);
insert into tb_categoria (id, nome_categoria,promocao) values ("0003", "Higiene", false);
insert into tb_categoria (id, nome_categoria,promocao) values ("0004", "Beleza", false);
insert into tb_categoria (id, nome_categoria,promocao) values ("0005", "Diabetes", true);

insert into tb_produto (nome_categoria,nome_produto,valor,quantidade,unidade,desconto) values ("Medicamentos","Dorflex",5.52,1,"10 comprimidos",2);
insert into tb_produto (nome_categoria,nome_produto,valor,quantidade,unidade,desconto) values ("Medicamentos","Sal de fruta ENO",3.24,2,"2 envelopes de 5g cada",0.55);
insert into tb_produto (nome_categoria,nome_produto,valor,quantidade,unidade,desconto) values ("Genéricos","Losartana",13.40,2,"30 comprimidos 19g",8);
insert into tb_produto (nome_categoria,nome_produto,valor,quantidade,unidade,desconto) values ("Genéricos","Dipirona sódica",5.39,1,"10 comprimidos 8g",1);
insert into tb_produto (nome_categoria,nome_produto,valor,quantidade,unidade,desconto) values ("Higiene","Sabonete Dove",2.69,2,"90g",0.8);
insert into tb_produto (nome_categoria,nome_produto,valor,quantidade,unidade,desconto) values ("Higiene","Desosodorante Dove",15.9,3,"150mL",3.67);
insert into tb_produto (nome_categoria,nome_produto,valor,quantidade,unidade,desconto) values ("Beleza","Creme facial Nivea",29.90,2,"100g",2.50);
insert into tb_produto (nome_categoria,nome_produto,valor,quantidade,unidade,desconto) values ("Diabetes","Tira para controle de glicemia",83.90,1,"50 tiras",4);

select * from tb_produto where valor > 50;
select * from tb_produto where valor > 3 and valor < 60;
select * from tb_produto where nome_produto like 'B%';
select * from tb_produto inner join tb_categoria on tb_produto.nome_categoria = tb_categoria.nome_categoria;
select * from tb_produto where nome_categoria = "Higiene";