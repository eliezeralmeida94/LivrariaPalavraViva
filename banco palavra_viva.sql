CREATE DATABASE IF NOT EXISTS palavra_viva;
USE palavra_viva;

CREATE TABLE IF NOT EXISTS livro (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    autor VARCHAR(255) NOT NULL,
    genero VARCHAR(100),
    quantidade INT,
    preco DECIMAL(10,2),
    descricao TEXT
);

-- Dados iniciais para testes
INSERT INTO livro (titulo, autor, genero, quantidade, preco, descricao) VALUES
('O Caminho da Fé', 'João Silva', 'Evangelico', 10, 29.90, 'Livro sobre fé cristã'),
('A Jornada Espiritual', 'Maria Souza', 'Autoajuda', 15, 39.99, 'Guia de crescimento espiritual');


CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    login VARCHAR(50) NOT NULL UNIQUE,
    senha VARCHAR(50) NOT NULL,
    perfil VARCHAR(20) NOT NULL 
);

INSERT INTO usuarios (nome, login, senha, perfil) VALUES
('Lafas Admin', 'admin', '123', 'Administrador'),
('Maria Operadora', 'maria', '123', 'Operador'),
('João Leitor', 'joao', '123', 'Usuário');

SELECT * FROM livro;