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

select * from cadastro; 

desc cadastro;

-- Selecionar em ordem crescente 

select * from cadastro order by nome;

-- Selecionar em ordem decrescente

select * from cadastro order by email desc;

-- Mostrar apenas nomes da tabela

select nome from cadastro;

-- Selecionar nomes que começam com 'a'

select * from cadastro where nome like 'a_%';

-- Selecionar cpf onde tem como o penúltimo número '9'

select * from cadastro where cpf like '%9_';

-- Selecionar email onde tem como a última letra é 'l'

select * from cadastro where email like '%l';

-- Mostrar apenas o cnpj da tabela

select cnpj from cadastro;

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
    
select * from proposta; 

desc proposta;

-- Selecionar em ordem crescente 

select * from proposta order by UF;

-- Selecionar em ordem decrescente

select * from proposta order by ProdutividadeDaUltimaSafra desc;

-- Mostrar apenas Hectares plantados da tabela

select HectaresPlantados from proposta;

-- Selecionar UF que começam com 'g'

select * from proposta where UF like 'g%';

-- Selecionar Produtividade Da UltimaSafra onde número começa com '5'

select * from proposta where ProdutividadeDaUltimaSafra like '5%';

-- Selecionar Hectares Plantados onde tem como o penúltimo número '5'

select * from proposta where HectaresPlantados like '%5_';

-- Mostrar apenas a UF da tabela

select UF from proposta;
    
    
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
        
select * from sensores; 

desc sensores;

-- Selecionar em ordem crescente 

select * from sensores order by Data_Hora;

-- Selecionar em ordem decrescente

select * from sensores order by SensorTemperatura desc;

-- Mostrar apenas o Sensor de Umidade da tabela

select SensorUmidade from sensores;

-- Selecionar Data e hora que tem como o terceiro número  '1'

select * from sensores where Data_Hora like '__1%';

-- Selecionar Sensor de temperatura onde tem como o último número '2'

select * from sensores where SensorTemperatura like '%2';

-- Mostrar apenas o Sensor de umidade da tabela

select SensorUmidade from sensores;