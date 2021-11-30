CREATE DATABASE redesocial_g3;
USE redesocial_g3;

CREATE TABLE usuario(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome_completo VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    senha VARCHAR(15) NOT NULL
);

CREATE TABLE postagem(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    aprender VARCHAR(15),
    ensinar VARCHAR(15),
    didatica BOOLEAN,
    pontos_de_experiencia INT,
    fk_usuario INT,
    fk_tema INT,
    FOREIGN KEY (fk_usuario) REFERENCES usuario (id),
    FOREIGN KEY (fk_tema) REFERENCES tema (id)
);

CREATE TABLE tema(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    curso VARCHAR(15),
    pontos_aprender INT,
    pontos_ensinar INT
);