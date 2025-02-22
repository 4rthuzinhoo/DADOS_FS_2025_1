CREATE SCHEMA DESAFIO;

CREATE TABLE cliente(
    cliente_id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(40) NOT NULL,
    cidade VARCHAR(40) NOT NULL,
    telefone VARCHAR(15) NOT NULL
);
CREATE TABLE funcionario(
    funcionario_id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(40) NOT NULL,
    cargo VARCHAR(40) NOT NULL,
    salario FLOAT
);
INSERT INTO cliente (nome, cidade, telefone) 
VALUES 
('Arthur','Pedras de Fogo','81 97337-0655'),
('Maria', 'João Pessoa', '83 98123-4567'),
('José', 'Campina Grande', '81 98765-4321'),
('Beatriz', 'Santa Rita', '81 99111-2233'),
('Carlos', 'Patos', '81 99887-6655'),
('Luciana', 'Cabedelo', '83 98234-5678'),
('Felipe', 'Bayeux', '83 99322-9988'),
('Juliana', 'Guarabira', '83 97999-1111'),
('Ricardo', 'Cajazeiras', '83 98765-8765'),
('Fernanda', 'Pombal', '83 98122-3344');

INSERT INTO funcionario (nome, cargo, salario) 
VALUES 
('José', 'faxineiro', 2.5),
('Eduarda', 'guarda', 3800),
('Ricardo', 'gerente', 5000),
('Joseli', 'coordenadora', 4000),
('Felipe', 'desenvolvedor', 6000),
('Laura', 'analista de dados', 10500),
('Gustavo', 'guarda', 3800),
('Renata', 'recepcionista', 2200),
('Marcos', 'vendedor', 2800),
('Lucas', 'faxineiro', 5500);

SELECT SUM(salario) FROM funcionario WHERE salario < 4000;
SELECT COUNT(salario) FROM funcionario WHERE salario > 4000;
SELECT MIN(salario) FROM funcionario;

SELECT * FROM cliente ORDER BY nome ASC;
SELECT cargo, AVG(salario) FROM funcionario GROUP BY cargo;
