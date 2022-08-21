CREATE TABLE ENDERECOS(
CEP VARCHAR(8) PRIMARY KEY NOT NULL,
ENDERECO VARCHAR(30),
NUM INT,
CIDADE VARCHAR(30),
ESTADO VARCHAR(30)
);

CREATE TABLE PESSOAS(
ID INT PRIMARY KEY NOT NULL IDENTITY(1,1),
NOME VARCHAR(30),
CPF VARCHAR(11),
RG VARCHAR(10),
NOME_PAI VARCHAR(30),
NOME_MAE VARCHAR(30),
CEP VARCHAR(8),
CONSTRAINT FK_ENDERECO_ID_FOREING FOREIGN KEY (CEP)
REFERENCES ENDERECOS (CEP)
);



