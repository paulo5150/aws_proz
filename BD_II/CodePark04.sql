CREATE DATABASE loja;

USE DATABASE loja;

CREATE TABLE cliente (
    pk_id_cliente serial primary key,
    cpf bigint unique not null,
    nome varchar(50) not null,
    data_ingresso DATE
);

CREATE TABLE vendas (
    pk_id_venda serial primary key,
    produto varchar(50),
    fk_id_cliente int,
    data_venda date,
    preco float,
    constraint fk_id_cliente 
        FOREIGN KEY (fk_id_cliente)
        REFERENCES cliente(pk_id_cliente)
);

INSERT into cliente(nome, cpf, data_ingresso) VALUES
	('Carlos Silva', 32165498721, '2023-05-06'),
    ('João Amaral', 65478912354, '2023-05-06'),
    ('Adriana Santos', 65433312354, '2023-05-11');

CREATE OR REPLACE FUNCTION qtde_clientes_dia(data_cadastro DATE)
    RETURNS INT AS $$
    BEGIN
    	RETURN
			COUNT(pk_id_cliente) AS quantidade
			FROM cliente
			WHERE data_ingresso = data_cadastro;
    END
$$ LANGUAGE PLPGSQL

SELECT qtde_clientes_dia('2023-05-06')

SELECT qtde_clientes_dia('2023-05-11')