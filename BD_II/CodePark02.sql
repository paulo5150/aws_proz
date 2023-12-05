
CREATE TABLE CLIENTE(
    CPF BIGINT PRIMARY KEY NOT NULL,
    NOME VARCHAR(50) NOT NULL,
    ID_ENDERECO INT not NULL,
    ID_EMAIL INT not NULL,
    UNIQUE (CPF),
    QTDE_PEDIDOS INT
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

CREATE TABLE PRODUTO(
    ID_PRODUTO SERIAL PRIMARY KEY,
    NOME_PRODUTO VARCHAR(50),
    PRECO DECIMAL(5,2)
);

CREATE TABLE ITEM(
    ID_ITEM SERIAL PRIMARY KEY,
    ID_PRODUTO INT,
    QUANTIDADE INT,
  	PRECO_TOTAL DECIMAL(5,2)
);

CREATE TABLE PEDIDO(
    ID_PEDIDO SERIAL PRIMARY KEY,
    ID_ITEM INT
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
alter table ITEM
	ADD CONSTRAINT fkIdProduto
    FOREIGN key (id_produto)
    REFERENCES PRODUTO(id_produto);
alter table PEDIDO
	ADD CONSTRAINT fkIdItem
    FOREIGN key (id_item)
    REFERENCES ITEM(id_item);


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
INSERT INTO PRODUTO (nome_produto, preco)
    values ('salgado', 8.00);
INSERT INTO PRODUTO (nome_produto, preco)
    values ('prato feito', 25.00);
INSERT INTO PRODUTO (nome_produto, preco)
    values ('sopa', 15.00);
INSERT INTO PRODUTO (nome_produto, preco)
    values ('chocolate', 3.00);
INSERT into PRODUTO (nome_produto, preco)
    values('suco de laranja', 6.00);
insert INTO item(id_produto, quantidade, preco_total) 
	values (1, 2, 16.00);
insert INTO item(id_produto, quantidade, preco_total) 
	values (3, 1, 15.00);
insert INTO item(id_produto, quantidade, preco_total) 
	values (4, 1, 3.00);
insert INTO item(id_produto, quantidade, preco_total) 
	values (5, 1, 6.00);
insert into pedido(id_item)
	value (1);
insert into pedido(id_item)
	value (2);
insert into pedido(id_item)
	value (3);
insert into pedido(id_item)
	value (4);
 
DELIMITER$$ 
create TRIGGER acrescenta_pedido 
on cliente
AFTER INSERT ON pedido
for EACH ROW
begin
    if new.id_pedido
       	INSERT into cliente(qtde_pedidos) 
       	VALUES (qtde_pedidos+1)
	end if;    
end$$