create database restaurante;

CREATE TABLE cliente (
    cliente_id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR (40) NOT NULL,
    telefone VARCHAR (40) NOT NULL,
    cidade VARCHAR(15) NOT NULL
);

CREATE TABLE funcionarios (
    funcionario_id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR (40) NOT NULL,
    cargo VARCHAR (40) NOT NULL,
    salario FLOAT
);

CREATE TABLE itens_pedido (
    quantidade INT,
    preco_unitario FLOAT,
    descricao VARCHAR(100),
    fk_cardapio_prato_id INT
);

CREATE TABLE pedido (
    pedido_id INT PRIMARY KEY auto_increment,
    data_pedido DATE,
    status VARCHAR(30),
    fk_funcionarios_funcionario_id INT ,fk_cliente_cliente_id INT
);

CREATE TABLE cardapio (
    prato_id INT PRIMARY KEY AUTO_INCREMENT,
    preco FLOAT,
    nome VARCHAR (40)
);
 
INSERT INTO cardapio (preco, nome) 
VALUES (15.50, 'Pizza de Frango'),
(20.00, 'Pizza Calabresa'),
(18.00, 'Pizza Portuguesa'),
(25.00, 'Hamburguer'),
(12.00, 'Salada de Frutas'),
(30.00, 'Churrasco'),
(22.50, 'Lasanha'),
(19.00, 'Creme de Galinha'),
(10.50, 'Salpicão'),
(13.00, 'Sopa');

INSERT INTO itens_pedido (quantidade, preco_unitario, descricao, fk_cardapio_prato_id)
VALUES (2, 15.50, 'Pizza de Frango', 1),
(1, 20.00, 'Pizza Calabresa', 2),
(3, 18.00, 'Pizza Portuguesa', 3),
(1, 25.00, 'Hamburguer', 4),
(5, 12.00, 'Salada de Frutas', 5),
(2, 30.00, 'Churrasco', 6),
(1, 22.50, 'Lasanha', 7),
(4, 19.00, 'Creme de Galinha', 8),
(3, 10.50, 'Salpicão', 9),
(6, 13.00, 'Sopa', 10);

INSERT INTO pedido (data_pedido, status, fk_funcionarios_funcionario_id, fk_cliente_cliente_id)
VALUES('2025-03-02', 'Pendente', 1, 1),
('2025-02-04', 'Concluído', 2, 2),
('2025-02-04', 'Cancelado', 3, 3),
('2025-03-01', 'Pendente', 4, 4),
('2025-01-08', 'Concluído', 5, 5),
('2025-02-19', 'Pendente', 6, 6),
('2025-02-25', 'Concluído', 7, 7),
('2025-02-28', 'Cancelado', 8, 8),
('2025-02-20', 'Pendente', 9, 9),
('2025-02-26', 'Concluído', 10, 10);


select count(cliente_id) from cliente group by cidade;
select cargo, avg(salario) as salario_médio from funcionário group by cargo;
select fk_cliente_cliente_id, count(pedido_id) from pedido group by fk_cliente_cliente_id;
select fk_cardapio_prato_id, sum(preco_unitario * quantidade) as total_item from itens pedido group by fk_cardapio_prato_id;
select max(preco) as preco_maximo from cardapio group by nome;

SELECT pedido.pedido_id, cliente.nome AS cliente_nome, pedido.data_pedido
FROM pedido
INNER JOIN cliente ON pedido.fk_cliente_cliente_id = cliente.cliente_id;

SELECT funcionario.nome AS funcionario_nome, pedido.pedido_id
FROM funcionario
RIGHT JOIN pedido ON funcionario.funcionario_id = pedido.fk_funcionarios_funcionario_id;





