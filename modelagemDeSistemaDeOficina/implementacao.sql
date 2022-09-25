CREATE database if not exists oficina;
USE oficina;

CREATE table if not exists cliente(
	idCliente int primary key auto_increment,
	fNome varchar(10),
    minit varchar(1),
    lNome varchar(10),
    cpf char(9),
    contact char(11),
    constraint unique_cpf UNIQUE(cpf)
);
alter table cliente auto_increment=1;

CREATE table if not exists pedido(
	idpedido int primary key auto_increment,
    idpedidoVeiculo int,
	valorServico double,
    descricao varchar(60),
    statusVeiculo boolean default false,
    constraint fk_Pedido_Cliente foreign key(idpedidoVeiculo) references cliente(idCliente)
				ON UPDATE cascade
);

alter table pedido auto_increment=1;

CREATE table if not exists mecanico(
	idMecanico int primary key auto_increment,
    nome varchar(50)
);

alter table mecanico auto_increment=1;

CREATE table if not exists ordemServico(
	idOrdemServico int primary key auto_increment,
    idServico int,
    pecasValor double,
    maoDeObra double,
	dataEmissao date,
    dataEntrega date,
    statusOS boolean default false,
	constraint fk_OrdemServico_cliente foreign key(idServico) references cliente(idCliente)
				ON UPDATE cascade
);

alter table ordemServico auto_increment=1;
alter table ordemServico
			add constraint fk_OrdemServico_pedido foreign key(idServico) references pedido(idpedido)
				ON UPDATE cascade;


CREATE table if not exists EquipeAvaliad(
	idEAMecanico int,
    idEAPedido int,
    primary key(idEAMecanico,idEAPedido),
    constraint fk_Equipe_Mecanico foreign key(idEAMecanico) references mecanico(idMecanico),
    constraint fk_Equipe_Pedido foreign key(idEAPedido) references pedido(idpedido)
);

alter table EquipeAvaliad auto_increment=1;

