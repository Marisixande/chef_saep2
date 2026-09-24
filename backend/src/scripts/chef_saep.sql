CREATE TYPE tipo AS ENUM('comum', 'chef' );

CREATE TABLE tb_usuario(
id_usuario SERIAL PRIMARY KEY,
nome VARCHAR(50) NOT NULL,
nome_usuario VARCHAR(20) NOT NULL,
email VARCHAR(150) NOT NULL,
senha INT NOT NULL,
imagem_usuario VARCHAR(255),
tipo tipo NOT NULL,
created_at TIMESTAMP WITHOUT TIME ZONE DEFAULT CURRENT_TIMESTAMP,
updated_at TIMESTAMP WITHOUT TIME ZONE
);

CREATE TABLE tb_receita (
id_receita SERIAL PRIMARY KEY,
titulo_receita VARCHAR(30) NOT NULL,
origem_receita VARCHAR(100) NOT NULL,
id_usuario INT REFERENCES tb_usuario(id_usuario) NOT NULL,
url_imagem VARCHAR(255),
created_at TIMESTAMP WITHOUT TIME ZONE DEFAULT CURRENT_TIMESTAMP,
updated_at TIMESTAMP WITHOUT TIME ZONE
);

CREATE TABLE tb_favoritar(
id_favorito SERIAL PRIMARY KEY,
id_usuario INT REFERENCES tb_usuario(id_usuario) NOT NULL,
id_receita INT REFERENCES tb_receita(id_receita) NOT NULL,
created_at TIMESTAMP WITHOUT TIME ZONE DEFAULT CURRENT_TIMESTAMP,
updated_at TIMESTAMP WITHOUT TIME ZONE
);