CREATE DATABASE loja;

USE DATABASE loja;

CREATE TABLE cliente (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(16) not NULL,
    sobrenome VARCHAR(24) not NULL,
    idade INT,
    pais VARCHAR(4)
);

drop TABLE demo;

CREATE TABLE produto (ID SERIAL PRIMARY KEY,
    item VARCHAR(48) NOT NULL,
    marca VARCHAR (24) NOT NULL
);

CREATE TABLE pedido (
    id SERIAL PRIMARY KEY,
    fk_id_cliente INT NOT NULL,
    fk_id_produto INT NOT NULL,
    quantidade INT NOT NULL,
    data_pedido DATE not NULL,
    CONSTRAINT fk_cliente FOREIGN KEY (fk_id_cliente) REFERENCES cliente(id),
    CONSTRAINT fk_produto FOREIGN KEY (fk_id_produto) REFERENCES produto(id)
);

INSERT INTO cliente (nome, sobrenome, idade, pais) VALUES
    ('João', 'Alves', 48, 'BR'),
    ('Roberto', 'Garcia', 36, 'MX'),
    ('Dario', 'Rubens', 39, 'ARG'),
    ('Julia', 'Lopes', 28, 'PE'),
    ('Rebeca', 'Giglio', 54, 'IT');

INSERT INTO produto (item, marca) VALUES
    ('teclado', 'Logitech'),
    ('mouse', 'HP'),
    ('monitor', 'LG'),
    ('mousepad', 'Logitech');

INSERT INTO pedido (fk_id_produto, fk_id_cliente, quantidade, data_pedido) VALUES
    (1, 4, 200,'2023-06-25'),
    (2, 4, 800,'2023-06-11'),
    (3, 3, 100,'2023-05-02'),
    (1, 1, 400,'2023-02-02'),
    (4, 2, 1200,'2023-03-21');

DELIMITER //
CREATE PROCEDURE consultar_produto ()
LANGUAGE 'plpgsql'
BEGIN
    SELECT data_pedido, sum(quantidade) as total_vendido
    from pedido
    GROUP by data_pedido;
end //
DELIMITER;

call consultar_produto()