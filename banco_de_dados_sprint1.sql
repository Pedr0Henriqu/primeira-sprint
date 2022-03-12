create database sprint1;
use sprint1;

-- CADASTRO

create table cadastro(
	idUsuario int primary key auto_increment,
	nome varchar(50) not null,
	email varchar(100) not null,
	cpf char(11),
	cnpj char(14),
	senha varchar(50) not null
);

insert into cadastro (nome, email, cpf, cnpj, senha) values
('Vittor Pavanelli', 'vittor.ribeiro@sptech.school', '69378954692', null, 'ga09809933'),
('Julia Duran', 'julia.duarte@sptech.school', '80645309096', null, 'juju868787'),
('Alex Silva', 'alex.silva@sptech.school', '02835954766', null, 'alex083663777'),
('Guilherme Victorino', 'guilherme.santos@sptech.school', '17954677920', null, 'guivi123456'),
('Pedro Henrique', 'pedro.mendonca@sptech.school', '97670909871', null, 'pedrinho87534'),
('AgroTech', 'agro_tech@gmail.com', null, '98357890645616', 'agro3767565'),
('AMBEV', 'ambev@gmail.com', null, '17890654899441', 'amb474653636');



-- PROPOSTA

create table proposta(
idProposta int primary key auto_increment,
HectaresPlantados int,
UF char(2),
ProdutividadeDaUltimaSafra int
);

insert into proposta (HectaresPlantados, UF, ProdutividadeDaUltimaSafra) values
	(130, 'RS', 40),
    (150, 'MT', 60),
    (200, 'GO', 30),
    (180, 'PR', 50);
    
    
    
    
    -- SENSORES
    
    create table sensores(
    idSensores int primary key auto_increment,
    SensorUmidade int,
    SensorTemperatura int,
    Data_Hora datetime
    );
    
    insert into sensores (SensorUmidade, SensorTemperatura, Data_Hora) values
		(50, 23, '2018-05-23 05:33:59'),
        (40, 22, '2019-03-11 02:49:55'),
        (45, 25, '2020-11-27 11:22:12'),
        (47, 28, '2021-10-23 07:10:33');