create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria(
	id varchar(4) not null ,
    nome_categoria varchar(100) not null,
    promocao boolean not null,
    primary key(nome_categoria)
);

create table tb_produto(
	nome_produto varchar(100) not null,
    nome_categoria varchar(100) not null,
    valor float not null,
    carga_horaria int not null,
    certificado boolean not null,
    foreign key (nome_categoria) references tb_categoria(nome_categoria),
    primary key (nome_produto)
);

insert into tb_categoria (id,nome_categoria,promocao) values ("0001","Mobile", true);
insert into tb_categoria (id,nome_categoria,promocao) values ("0002","Programação", false);
insert into tb_categoria (id,nome_categoria,promocao) values ("0003","Front-end", true);
insert into tb_categoria (id,nome_categoria,promocao) values ("0004","Devops", false);
insert into tb_categoria (id,nome_categoria,promocao) values ("0005","Design e UX", true);

insert tb_produto (nome_produto, nome_categoria, valor, carga_horaria, certificado) values ("Flutter","Mobile",90,80,true);
insert tb_produto (nome_produto, nome_categoria, valor, carga_horaria, certificado) values ("Android","Mobile",60,92,false);
insert tb_produto (nome_produto, nome_categoria, valor, carga_horaria, certificado) values ("Lógica de programação","Programação",50,44,true);
insert tb_produto (nome_produto, nome_categoria, valor, carga_horaria, certificado) values ("Java","Programação",200,350,false);	
insert tb_produto (nome_produto, nome_categoria, valor, carga_horaria, certificado) values ("HTML e CSS","Front-end",150,200,false);
insert tb_produto (nome_produto, nome_categoria, valor, carga_horaria, certificado) values ("Entrega contínua","Devops",62,100,true);
insert tb_produto (nome_produto, nome_categoria, valor, carga_horaria, certificado) values ("UI","Design e UX",300, 500, true);
insert tb_produto (nome_produto, nome_categoria, valor, carga_horaria, certificado) values ("UX","Design e UX", 180,220, false);

select * from tb_produto where valor > 50;
select * from tb_produto where valor > 3 and valor < 60;
select * from tb_produto where nome_produto like 'J%';
select * from tb_produto inner join tb_categoria on tb_produto.nome_categoria = tb_categoria.nome_categoria;
select * from tb_produto where nome_categoria = "Mobile";