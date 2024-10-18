
USE atividade ;

-- Criar tabela de Usuários
CREATE TABLE Usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    materia ENUM('Humanas', 'Matemática', 'Natureza', 'Linguagens') NOT NULL
);

-- Criar tabela de Turmas
CREATE TABLE Turmas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    id_professor INT,
    FOREIGN KEY (id_professor) REFERENCES Usuarios(id)
);

-- Criar tabela de Atividades
CREATE TABLE Atividades (
    id INT AUTO_INCREMENT PRIMARY KEY,
    descricao TEXT NOT NULL,
    id_turma INT,
    FOREIGN KEY (id_turma) REFERENCES Turmas(id)
);

-- Adicionar índices para otimizar consultas
CREATE INDEX idx_usuario ON Usuarios(username);
CREATE INDEX idx_turma ON Turmas(nome);
CREATE INDEX idx_atividade ON Atividades(descricao);
