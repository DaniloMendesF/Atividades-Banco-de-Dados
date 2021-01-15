create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria(
	id varchar(4) not null ,
    nome_categoria varchar(100) not null,
    promocao boolean not null,
    primary key(nome_categoria)
);

create table tb_produto(
	nome_produto varchar(100) not null,
    valor float not null,
    quantidade int not null,
    marca varchar(100) not null,
    nome_categoria varchar(100) not null,
    foreign key (nome_categoria) references tb_categoria(nome_categoria),
    primary key (nome_produto)
);

insert into tb_categoria (id,nome_categoria,promocao) values ("0001","Areia e pedra", true);
insert into tb_categoria (id,nome_categoria,promocao) values ("0002","Rejuntes", true);
insert into tb_categoria (id,nome_categoria,promocao) values ("0003","Cantoneiras", false);
insert into tb_categoria (id,nome_categoria,promocao) values ("0004","Espaçadores", false);
insert into tb_categoria (id,nome_categoria,promocao) values ("0005","Louças", true);

insert tb_produto (nome_produto, valor, quantidade, marca, nome_categoria) values ("Areia média lavada",3.99,1,"ABareias","Areia e pedra");
insert tb_produto (nome_produto, valor, quantidade, marca, nome_categoria) values ("Rejunte acrílico",49.99,2,"Bostik","Rejuntes");
insert tb_produto (nome_produto, valor, quantidade, marca, nome_categoria) values ("Cantoneira em L",85.99,3,"Fortaleza","Cantoneiras");
insert tb_produto (nome_produto, valor, quantidade, marca, nome_categoria) values ("Espaçador para nivelamento",23.49,5,"Cortag","Espaçadores");	
insert tb_produto (nome_produto, valor, quantidade, marca, nome_categoria) values ("Bacia sanitária",312.99,1,"Deca","Louças");
insert tb_produto (nome_produto, valor, quantidade, marca, nome_categoria) values ("Cuba de apoio",241.99,1,"Incepa","Louças");
insert tb_produto (nome_produto, valor, quantidade, marca, nome_categoria) values ("Caixa de descarga",28.99,2,"Astra","Louças");
insert tb_produto (nome_produto, valor, quantidade, marca, nome_categoria) values ("Argila expandida",32.99,1,"ABareias","Areia e pedra");

select * from tb_produto where valor > 50;
select * from tb_produto where valor > 3 and valor < 60;
select * from tb_produto where nome_produto like 'C%';
select * from tb_produto inner join tb_categoria on tb_produto.nome_categoria = tb_categoria.nome_categoria;
select * from tb_produto where nome_categoria = "Cantoneira";