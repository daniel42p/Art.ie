-- Arquivo de apoio, caso você queira criar tabelas como as aqui criadas para a API funcionar.
-- Você precisa executar os comandos no banco de dados para criar as tabelas,
-- ter este arquivo aqui não significa que a tabela em seu BD estará como abaixo!

/* para workbench - local - desenvolvimento */

CREATE DATABASE artie;

USE artie;


CREATE TABLE usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
    fkGenero INT,
    CNPJ VARCHAR(15),
    telefone  VARCHAR(15),
	email VARCHAR(50),
	senha VARCHAR(100)
);

CREATE TABLE genero(
idGenero INT PRIMARY KEY AUTO_INCREMENT,
nomeGenero VARCHAR(45)
);

ALTER TABLE Usuario ADD FOREIGN KEY (fkGenero) REFERENCES genero(idGenero);


insert into genero values
(1, 'Ação'),
(2, 'Aventura'),
(3, 'Comédia'),
(4, 'Fantasia'),
(5, 'Ficção Científica'),
(6, 'Romance'),
(7, 'Suspense'),
(8, 'Terror');

/* para sql server - remoto - produção */

CREATE TABLE usuario (
	id INT PRIMARY KEY IDENTITY(1,1),
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50),
);

CREATE TABLE aviso (
	id INT PRIMARY KEY IDENTITY(1,1),
	titulo VARCHAR(100),
    descricao VARCHAR(150),
	fk_usuario INT FOREIGN KEY REFERENCES usuario(id)
); 

CREATE TABLE medida (
	id INT PRIMARY KEY IDENTITY(1,1),
	temperatura DECIMAL,
	umidade DECIMAL,
	momento DATETIME,
	fk_aquario INT
);


