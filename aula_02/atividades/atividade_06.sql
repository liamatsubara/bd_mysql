CREATE DATABASE db_curso_da_minha_vida;
USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias ( 
	id bigint auto_increment,
    nome varchar(255) not null,
    ativo BOOLEAN not null,
    PRIMARY KEY(id)
);

INSERT INTO tb_categorias (nome, ativo)
VALUES
	('Tecnologia', 1),
    ('Artes e Design', 1),
    ('Saúde', 1),
    ('Negócios e Gestão', 1),
    ('Ciências Humanas', 1);
    
CREATE TABLE tb_cursos (
	id bigint auto_increment,
    nome varchar(255) not null,
    preco decimal(6,2) not null,
    duracao varchar(255) not null,
    docente varchar(255) not null,
    categoria_id bigint not null,
    PRIMARY KEY(id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_cursos (nome, preco, duracao, docente, categoria_id)
VALUES
    ('Programação em Python', 499.99, '40 horas', 'Ana Silva', 1),         
    ('Design Gráfico', 699.99, '45 horas', 'João Mendes', 2),             
    ('Primeiros Socorros', 399.50, '20 horas', 'Mariana Souza', 3),     
    ('Gestão Financeira', 799.90, '60 horas', 'Carlos Oliveira', 4),      
    ('Psicologia Aplicada', 499.00, '50 horas', 'Renata Lima', 5),        
    ('Inteligência Artificial', 999.99, '80 horas', 'Lucas Pereira', 1),  
    ('Ilustração Digital', 899.90, '55 horas', 'Camila Duarte', 2),       
    ('Marketing Digital', 599.99, '40 horas', 'Fernanda Rocha', 4),
    ('Java para Iniciantes', 449.99, '35 horas', 'Juliana Amaral', 1),    
    ('Jogos Digitais', 749.99, '50 horas', 'Jorge Nunes', 2),            
    ('Jardinagem e Paisagismo', 299.99, '25 horas', 'Júlia Martins', 5),  
    ('Javascript Avançado', 549.99, '30 horas', 'José Henrique', 1);

SELECT * FROM tb_cursos WHERE preco > 500.00;

SELECT * FROM tb_cursos WHERE preco BETWEEN 600 AND 1000;

SELECT * FROM tb_cursos WHERE nome LIKE '%J%';

SELECT * FROM tb_cursos INNER JOIN tb_categorias
ON tb_cursos.categoria_id = tb_categorias.id;

SELECT * FROM tb_cursos INNER JOIN tb_categorias
ON tb_cursos.categoria_id = tb_categorias.id
WHERE tb_cursos.categoria_id = 1;