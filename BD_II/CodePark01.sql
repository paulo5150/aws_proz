CREATE DATABASE CADASTRO;

CREATE TABLE CLIENTE(
    CPF BIGINT PRIMARY KEY NOT NULL,
    NOME VARCHAR(50) NOT NULL,
    ID_ENDERECO INT not NULL,
    ID_EMAIL INT not NULL,
    UNIQUE (CPF)
);

CREATE TABLE ENDERECO(
    ID_ENDERECO SERIAL PRIMARY key,
    LOGRADOURO VARCHAR(50),
    NUMERO INT,
    BAIRRO VARCHAR(30),
    CIDADE VARCHAR(30),
    ESTADO VARCHAR (30),
    PAIS VARCHAR (25)
);

CREATE TABLE EMAIL(
    ID_EMAIL SERIAL PRIMARY KEY,
    EMAIL VARCHAR(30)
);

DROP TABLE demo;

alter table cliente
	ADD CONSTRAINT fkIdEndereco
    FOREIGN key (id_endereco)
    REFERENCES endereco(id_endereco);
alter table cliente
	ADD CONSTRAINT fkIdEmail
    FOREIGN key (id_email)
    REFERENCES email (id_email);


INSERT INTO endereco (logradouro, NUMERO, BAIRRO, CIDADE, ESTADO, PAIS)
	VALUES ('Rua Das Palmeiras', 35, 'Santa Cecília', 'São Paulo', 'SP', 'Brasil');
INSERT INTO endereco (logradouro, NUMERO, BAIRRO, CIDADE, ESTADO, PAIS)
	VALUES ('Palm Parkway', 9999, 'Lake Buena Vista', 'Orlando', 'Flórida', 'Estados Unidos');
INSERT into email (email)
	VALUES ('gilbertoantunes78@bol.com.br');
INSERT into email (email)
	VALUES ('jamesnurse@ifood.com.br');
INSERT into cliente (cpf, nome, id_endereco, id_email)
	values (24242424242, 'Gilberto Antunes da Silva', 1, 1);
INSERT into cliente (cpf, nome, id_endereco, id_email)
	values (42424242424, 'James Nurse Hate Wash', 2, 2);
    
SELECT
	cliente.cpf,
    cliente.nome,
    email.email,
    endereco.logradouro,
    endereco.numero,
    endereco.bairro,
    endereco.cidade,
    endereco.estado,
    endereco.pais
FROM cliente
join email
	on email.id_email = cliente.id_email
join endereco
	on endereco.id_endereco = cliente.id_endereco;