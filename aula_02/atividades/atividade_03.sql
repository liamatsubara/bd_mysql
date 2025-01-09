CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias ( 
	id bigint auto_increment,
    nome varchar(255) not null,
    ativo BOOLEAN not null,
    PRIMARY KEY(id)
);

INSERT INTO tb_categorias (nome, ativo)
VALUES
	('Medicamentos', 1),
    ('Vitaminas e Suplementos', 1),
    ('Beleza', 1),
    ('Cosméticos', 1),
    ('Cuidados Diários', 1);
    
CREATE TABLE tb_produtos (
	id bigint auto_increment,
    nome varchar(255) not null,
    preco decimal(6,2) not null,
    validade date not null,
    estoque int not null,
    categoria_id bigint not null,
    PRIMARY KEY(id)
);

INSERT INTO tb_produtos (nome, preco, validade, estoque, categoria_id)
VALUES
	('Novalgina 1g', 18.30, '2025-12-15', 150, 1), -- Remédios
	('Paracetamol 500mg', 9.99, '2026-01-01', 200, 1), -- Remédios
    ('Band-Aid Flexível', 5.49, '2027-05-15', 150, 2), -- Primeiros-Socorros
    ('Vitamina C 1g', 15.99, '2025-12-31', 100, 3), -- Vitaminas
    ('Protetor Solar FPS 50', 59.90, '2026-11-20', 75, 4), -- Protetores Solares
    ('Hidratante Corporal', 29.90, '2027-03-15', 80, 5), -- Hidratantes
    ('Balm Labial Hidratante', 12.50, '2026-09-10', 120, 6), -- Lábios
    ('Colírio Lubrificante', 72.00, '2027-07-01', 60, 7), -- Olhos
    ('Shampoo Anticaspa 200ml', 19.99, '2026-04-30', 90, 8); -- Shampoos
    
SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON 	tb_produtos.categoria_id = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON 	tb_produtos.categoria_id = tb_categorias.id
WHERE tb_produtos.categoria_id = 1;

