-- Criando base de dados --
create database oficina;
-- Selecionado o data base --
use oficina;

-- Criando Tabela Person --
create table person (
	idperson int auto_increment, 
	firstname varchar(45) not null,
    middlename varchar(45),
    lasttname varchar(45) not null,
    street varchar(45) not null,
    addressnumber int not null,
    neighborhood varchar(45) not null,
    city varchar(45) not null,
    state enum('AC', 'AL', 'AM', 'AP', 'BA', 'CE', 'DF', 'ES', 'GO', 'MA', 'MG', 'MS', 'MT', 'PA', 'PB', 'PE', 'PI', 'PR', 'RJ', 'RN', 'RO', 'RR', 'RS', 'SC', 'SE', 'SP', 'TO'),
    telefone varchar(45),
    primary key(idperson)
);

-- Criando Tabela Vehicle --
create table vehicle(
	idvehicle int auto_increment,
    plate varchar(45) not null,
    model varchar(45) not null,
    vehicleyear int not null,
    idPerson int,
    primary key(idvehicle),
    constraint fk_person_idperson foreign key (idperson) references person(idperson) 
);

-- Criando Tabela Cliente --
 create table client(
	idpersonclient int auto_increment,
    clientstatus ENUM('diamond', 'gold', 'silver') default 'silver',
    idperson int,
    primary key(idpersonclient),
    constraint fk_person_client foreign key (idperson) references person(idperson)
 );


create table mechanic(
	idmechanic int auto_increment,
    especialidade varchar(45),
    idperson int,
    primary key(idmechanic),
    constraint fk_person_mechanic foreign key (idperson) references person(idperson)
);

-- Criando Tabela Serviço --
create table service(
	idservice int,
    category enum('Revisão', 'Troca de Óleo e Filtros', 'Manutenção de Freios', 'Serviços de Suspensão', 'Serviços de Direção', 'Alinhamento e Balanceamento', 'Troca e Manutenção de Pneus', 'Serviços de Motor', 'Serviços de Câmbio e Embreagem', 'Serviços Elétricos', 'Ar-Condicionado', 'Diagnóstico Eletrônico', 'Escapamento e Sistema de Exaustão'),
    description varchar(255),
    price float,
    primary key(idservice)
);

-- Criando Tabela Peças --
create table carpart(
	idcarpart int,
    partname varchar(45),
    price float,
    primary key(idcarpart)
);

-- Criando ordem de Serviço --
create table serviceorder(
	idserviceorder int,
    deliverydate date,
    orderstatus enum('on work', 'ready', 'waiting'),
    totalserviceorder float, 
    idvehicle int,
    idmechanic int,
    primary key(idserviceorder),
    constraint fk_vehicle_idvehicle foreign key(idvehicle) references vehicle(idvehicle),
    constraint fk_mechanic_Person_idClient foreign key(idmechanic) references mechanic(idmechanic)
);

-- Criando itens de Serviço --
create table serviceitens(
	idserviceitens int,
    quantity int default 1,
    totalservice float,
    idserviceorder int,
    idservice int,
    primary key(idserviceitens),
    constraint fk_serviceorder_idserviceorder foreign key(idserviceorder) references serviceorder(idserviceorder),
    constraint fk_service_idservice foreign key(idservice) references service(idservice)
);

-- Criando Peças --
create table partitens(
	idpartitens int,
    quantity int,
    parttotal float,
    idserviceorder int,
    idcarpart int,
    primary key(idpartitens),
    constraint fk_serviceorder_idserviceorder_partitens foreign key(idserviceorder) references serviceorder(idserviceorder),
    constraint fk_carpart_idcarpart foreign key(idcarpart) references carpart(idcarpart)
);

