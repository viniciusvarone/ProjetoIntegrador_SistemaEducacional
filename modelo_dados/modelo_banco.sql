CREATE DATABASE Sistema_Universidade;
USE Sistema_Universidade;


CREATE TABLE IF NOT EXISTS Pessoa (
    id INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    telefone VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS Pessoa_fisica (
    id INT PRIMARY KEY,
    cpf CHAR(11) NOT NULL UNIQUE,
    rg VARCHAR(15) NOT NULL UNIQUE,
    dataNascimento DATE,
    FOREIGN KEY (id) REFERENCES Pessoa(id)
);

CREATE TABLE IF NOT EXISTS Pessoa_juridica (
    id INT PRIMARY KEY,
    cnpj VARCHAR(14) NOT NULL UNIQUE,
    endereco VARCHAR(100),
    FOREIGN KEY (id) REFERENCES Pessoa(id)
);

CREATE TABLE IF NOT EXISTS Aluno (
    id INT PRIMARY KEY,
    matricula VARCHAR(70) UNIQUE,
    curso VARCHAR(70),
    FOREIGN KEY (id) REFERENCES Pessoa_fisica(id)
);

CREATE TABLE IF NOT EXISTS Professor (
    id INT PRIMARY KEY,
    email_corporativo VARCHAR(70),
    disciplina VARCHAR(70),
    matricula VARCHAR(70) UNIQUE,
    FOREIGN KEY (id) REFERENCES Pessoa_fisica(id)
);

CREATE TABLE IF NOT EXISTS Fornecedor (
    id INT PRIMARY KEY,
    data_contrato DATE,
    servico VARCHAR(100),
    FOREIGN KEY (id) REFERENCES Pessoa_juridica(id)
);











