CREATE TABLE cadaver (
	identificacao CHAR(14) PRIMARY KEY,
    nome_cadaver VARCHAR(100) NOT NULL,
    peso DOUBLE,
    dataMorte VARCHAR(10),
    horaMorte VARCHAR(5),
    situacao VARCHAR(50) NOT NULL
    );

CREATE TABLE funcionario (
	cpf CHAR(14) PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    login_acesso VARCHAR(100) NOT NULL,
    senha VARCHAR(100) NOT NULL, 
    cargo VARCHAR (100)
    );

INSERT INTO funcionario (cpf, nome, login_acesso, senha, cargo)
VALUES ('12345678900', 'Admin', 'admin', 'admin', 'Administrador');

ALTER TABLE cadaver
ADD COLUMN cpf_funcionario CHAR(14) REFERENCES funcionario(cpf);