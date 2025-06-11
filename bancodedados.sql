CREATE DATABASE IF NOT EXISTS servfacil;

USE servfacil;

CREATE TABLE IF NOT EXISTS clientes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(5, 2) NOT NULL UNIQUE,
    telefone VARCHAR(10, 2) NOT NULL,
    endereco VARCHAR(6, 2) NOT NULL,
    cidade VARCHAR(50) NOT NULL,
    estado TEXT,
    cep VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS ingredientes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255), NOT NULL,
    tipo VARCHAR(50) NOT NULL,
    descricao TEXT,
    teor_alcoolico DECIMAL(5, 2) NOT NULL DEFAULT(0),
    marca VARCHAR (50),
    volume DECIMAL(6, 2) NOT NULL,
    tipo_volume VARCHAR(50) NOT NULL,
    imagem VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS categoria (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(200) NOT NULL,
    descricao TEXT
);

CREATE TABLE IF NOT EXISTS drinks_ingredientes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    drink_id INT NOT NULL,
    ingrediente_id INT NOT NULL,
    quantidade DECIMAL(10, 2),
    tipo_quantidade VARCHAR(20) NOT NULL,
    FOREING KEY (drink_id) REFERENCES drinks(id),
)