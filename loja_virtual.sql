CREATE DATABASE db_loja_virtual;
USE db_loja_virtual;
CREATE TABLE tb_produtos(
    id_produto INT NOT NULL PRIMARY KEY,
    produto VARCHAR(200) NOT NULL,
    valor FLOAT(8,2) NOT NULL
);