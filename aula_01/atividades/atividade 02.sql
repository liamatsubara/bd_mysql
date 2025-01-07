CREATE DATABASE db_ecommerce;
USE db_ecommerce;

CREATE TABLE tb_produtos(
	id bigint auto_increment,
    nome varchar(255) not null,
    categoria varchar(255),
    estoque int,
    preco decimal(8,2),
    PRIMARY KEY(id)
);

DESC tb_produtos;

INSERT INTO tb_produtos (nome, categoria, estoque, preco)
VALUE   ('Camiseta Branca', 'Camisas e Camisetas', 100, 120.00),
		('Camiseta Preta', 'Camisas e Camisetas', 100, 120.00),
        ('Calça Jeans', 'Calças', 200, 220.00),
        ('Vestido Gala Preto', 'Vestidos', 50, 580.00),
        ('Vestido Gala Branco', 'Vestidos', 80, 580.00),
        ('Calça Preta', 'Calças', 110, 290.00),
        ('Blazer Preto', 'Blazers', 20, 640.00),
        ('Regata Cinza', 'Camisas e Camisetas', 150, 80.00);
        
SELECT id, nome, categoria, estoque,
	CONCAT("R$ ", FORMAT(preco, 2, 'pt_BR')) AS preço FROM tb_produtos WHERE preco > 500;

SELECT id, nome, categoria, estoque,
	CONCAT("R$ ", FORMAT(preco, 2, 'pt_BR')) AS preço FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET estoque = 80 WHERE id = 7;

SELECT * FROM tb_produtos;

