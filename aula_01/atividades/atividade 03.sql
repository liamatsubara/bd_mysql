CREATE DATABASE db_escola;
USE db_escola;

CREATE TABLE tb_estudantes(
	id bigint auto_increment,
    nome varchar(255) not null,
    data_nascimento date,
    ano varchar(255),
    media_final decimal(2,1),
    PRIMARY KEY(id)
);

INSERT INTO tb_estudantes(nome, data_nascimento, ano, media_final)
VALUE   ('Pedro Santos', '2016-03-12', 1, 8.0),
		('Juliana Costa', '2015-06-25', 2, 7.5),
		('Lucas Oliveira', '2014-10-14', 3, 9.0),
		('Isabela Almeida', '2013-04-07', 4, 8.5),
		('Gustavo Martins', '2015-01-30', 2, 4.8),
        ('Fernanda Souza', '2014-12-02', 3, 8.9),
		('Ricardo Silva', '2013-09-18', 4, 6.3),
		('Larissa Ferreira', '2014-11-05', 3, 5.2);
        
SELECT id, nome,
		DATE_FORMAT(data_nascimento, '%d/%m/%Y') AS data_nascimento,
        ano, media_final
FROM tb_estudantes WHERE media_final < 7.0;

SELECT id, nome,
		DATE_FORMAT(data_nascimento, '%d/%m/%Y') AS data_nascimento,
        ano, media_final
FROM tb_estudantes WHERE media_final > 7.0;

UPDATE tb_estudantes SET media_final = 5.5 WHERE id = 5;

SELECT * FROM tb_estudantes;