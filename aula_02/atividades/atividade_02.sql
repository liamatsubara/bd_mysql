CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
	id bigint auto_increment,
    nome varchar(255) not null,
    descricao varchar(5000),
    PRIMARY KEY (id)
);

INSERT INTO tb_categorias (nome, descricao) 
VALUES  ('Clássica', 'Pizzas tradicionais com os sabores mais populares, como Margherita, Calabresa e Mussarela.'),
		('Premium', 'Pizzas gourmet com ingredientes sofisticados e combinações exclusivas, ideal para quem busca uma experiência diferenciada.'),
        ('Doce', 'Pizzas com opções de sobremesas, como chocolate, frutas e cremes, para quem prefere sabores mais doces.'),
        ('Vegana', 'Pizzas que não contêm ingredientes de origem animal, com opções de vegetais, grãos e queijos veganos.'),
        ('Vegana doce', 'Pizzas doces sem ingredientes de origem animal, com opções como frutas, chocolate vegano e outros doces.');
        
SELECT * FROM tb_categorias;

CREATE TABLE tb_pizzas(
	id bigint auto_increment,
    nome varchar(255) not null,
    preco decimal(5,2) not null,
    tamanho varchar(50) not null,
    ingredientes varchar(5000),
    categorias_id bigint,
    PRIMARY KEY (id),
    FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_pizzas (nome, preco, tamanho, ingredientes, categorias_id)
VALUES
	('Margherita', 37.00, 'Média', 'Molho de tomate, queijo mussarela, manjericão', 1),
    ('Calabresa', 35.00, 'Grande', 'Calabresa, cebola, molho de tomate, queijo mussarela', 1),
    ('4 Queijos', 51.40, 'Grande', 'Molho de tomate, queijo mussarela, queijo parmesão, queijo gorgonzola, queijo provolone', 2),
    ('Presunto de Parma com Figos', 71.00, 'Grande', 'Presunto de parma, figos frescos, queijo gorgonzola, molho balsâmico', 2),
    ('Cogumelos e Alho Poró', 68.50, 'Média', 'Cogumelos, alho poró, queijo parmesão, molho pesto', 2),
    ('Frango com Catupiry', 41.00, 'Média', 'Frango desfiado, catupiry, milho, cebola', 1),
    ('Doce de Leite', 37.00, 'Média', 'Doce de leite, chocolate, amendoim', 3),
    ('Chocolate com morango', 38.00, 'Média', 'chocolate, morango', 3),
	('Espinafre e Ricota de Amêndoas', 49.00, 'Grande', 'Espinafre, ricota de amêndoas, alho, cebola, molho pesto vegano', 4),
	('Palmito', 42.00, 'Grande', 'Palmito, tomate, cebola, azeitonas, molho de tomate', 4),
    ('Banana com Canela', 31.00, 'Média', 'Banana, canela, açúcar, leite condensado vegano', 5);
    
-- Pizzas maiores que 45 em ordem crescente
SELECT * FROM tb_pizzas WHERE preco > 45.00
ORDER BY preco ASC;

-- Pizzas na faixa de 50 a 100 em ordem crescente
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00
ORDER BY preco ASC;

-- Pizzas que possuem a letra M
SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';

-- Inner Join
SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categorias_id = tb_categorias.id;

-- Inner Join pizzas veganas
SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categorias_id = tb_categorias.id
WHERE tb_pizzas.categorias_id IN (4, 5);


