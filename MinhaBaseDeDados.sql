create database Clinica;

CREATE TABLE Ambulatorios (
    nroa INTEGER,
    andar NUMERIC(3) NOT NULL,
    capacidade SMALLINT,
    PRIMARY KEY (nroa)
);

CREATE TABLE Medicos (
    codm INTEGER,
    nome VARCHAR(40) NOT NULL,
    idade SMALLINT NOT NULL,
    especialidade VARCHAR(20),
    cpf NUMERIC(11) UNIQUE,
    cidade VARCHAR(30),
    nroa INTEGER,
    PRIMARY KEY (codm)
);

CREATE TABLE Pacientes (
    codp INTEGER,
    nome VARCHAR(40) NOT NULL,
    idade SMALLINT NOT NULL,
    cidade VARCHAR(30),
    cpf NUMERIC(11) UNIQUE,
    doenca VARCHAR(40) NOT NULL,
    PRIMARY KEY (codp)
);

CREATE TABLE Funcionarios (
    codf INTEGER,
    nome VARCHAR(40) NOT NULL,
    idade SMALLINT,
    cpf NUMERIC(11) UNIQUE,
    cidade VARCHAR(30),
    salario NUMERIC(10),
    cargo VARCHAR(20),
    primary key(codf)
);

CREATE TABLE consultas (
    codm INTEGER,
    codp INTEGER,
    data DATE,
    hora TIME
);

alter table Funcionarios
	add nroa integer;
show tables;
