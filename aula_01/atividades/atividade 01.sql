CREATE DATABASE db_rh;
USE db_rh;

CREATE TABLE tb_colaboradores(
	id bigint auto_increment,
    nome varchar(255) not null,
    data_nascimento date,
    cargo varchar(255),
    salario decimal(8,2),
    PRIMARY KEY(id)
);

DESC tb_colaboradores;

INSERT INTO tb_colaboradores (nome, data_nascimento, cargo, salario)
VALUE 	('Mariana', '1990-02-23', 'Gestora', 15000.00),
		('Helena', '1993-11-11', 'Analista II', 6000.00),
        ('Pietro', '1981-08-05', 'Coordenador', 11500.00),
        ('Roberto', '2000-10-09', 'Analista I', 4100.00),
        ('Fátima', '1997-12-18', 'Assistente', 1900.00);
        
SELECT id,
	nome,
	DATE_FORMAT(data_nascimento, '%d/%m/%Y') AS data_nascimento,
	cargo,
CONCAT("R$ ", FORMAT(salario, 2, 'pt_BR')) AS salario FROM tb_colaboradores WHERE salario > 2000;

SELECT id,
	nome,
	DATE_FORMAT(data_nascimento, '%d/%m/%Y') AS data_nascimento,
	cargo,
CONCAT("R$ ", FORMAT(salario, 2, 'pt_BR')) AS salario FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET cargo = 'Analista III', salario = 8000.00 WHERE id = 2;

SELECT * FROM tb_colaboradores;
