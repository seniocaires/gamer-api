-- SEQUENCE

CREATE SEQUENCE gamer_db.questao_seq INCREMENT 1 START 1;
CREATE SEQUENCE gamer_db.opcao_resposta_seq INCREMENT 1 START 1;

-- TABELA

CREATE TABLE gamer_db.questao (
	id BIGINT DEFAULT NEXTVAL('gamer_db.questao_seq'::TEXT) NOT NULL,
	descricao VARCHAR(200) NOT NULL
);

CREATE TABLE gamer_db.opcao_resposta (
	id BIGINT DEFAULT NEXTVAL('gamer_db.opcao_resposta_seq'::TEXT) NOT NULL,
	descricao VARCHAR(200) NOT NULL,
	correta Boolean NOT NULL,
	id_questao BIGINT NOT NULL
);

-- CONSTRAINT

ALTER TABLE gamer_db.questao ADD CONSTRAINT PK_questao PRIMARY KEY (id);

ALTER TABLE gamer_db.opcao_resposta ADD CONSTRAINT PK_opcao_resposta PRIMARY KEY (id);

ALTER TABLE gamer_db.opcao_resposta ADD CONSTRAINT FK_opcao_resposta_questao 
	FOREIGN KEY (id_questao) REFERENCES gamer_db.questao (id)
;

-- INSERT

INSERT INTO gamer_db.questao (descricao) VALUES ('Qual o nome do mascote da SEGA?');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (1, true, 'Sonic');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (1, false, 'Mario');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (1, false, 'Luiz');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (1, false, 'Antônio');

INSERT INTO gamer_db.questao (descricao) VALUES ('Qual o nome do mascote da Nintendo?');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (2, true, 'Mario');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (2, false, 'Sonic');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (2, false, 'Luiz');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (2, false, 'Antônio');

INSERT INTO gamer_db.questao (descricao) VALUES ('Qual o ano de lançamento do Magnavox Odyssey?');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (3, true, '1972');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (3, false, '1800');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (3, false, '1975');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (3, false, '1945');

INSERT INTO gamer_db.questao (descricao) VALUES ('Qual o ano de lançamento do Atari 2600?');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (4, true, '1977');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (4, false, '1982');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (4, false, '1932');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (4, false, '1952');

INSERT INTO gamer_db.questao (descricao) VALUES ('Qual o ano de lançamento do NES/Famicom?');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (5, true, '1983');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (5, false, '1982');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (5, false, '1984');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (5, false, '1986');

INSERT INTO gamer_db.questao (descricao) VALUES ('Qual o ano de lançamento do Master System?');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (6, true, '1987');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (6, false, '1986');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (6, false, '1985');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (6, false, '1988');

INSERT INTO gamer_db.questao (descricao) VALUES ('Qual o ano de lançamento do Game Boy?');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (7, true, '1989');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (7, false, '1998');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (7, false, '1985');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (7, false, '1990');

INSERT INTO gamer_db.questao (descricao) VALUES ('Qual o ano de lançamento do Mega Drive?');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (8, true, '1988');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (8, false, '1990');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (8, false, '1986');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (8, false, '1992');

INSERT INTO gamer_db.questao (descricao) VALUES ('Qual o ano de lançamento do Super Nintendo?');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (9, true, '1990');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (9, false, '1988');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (9, false, '1989');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (9, false, '1991');

INSERT INTO gamer_db.questao (descricao) VALUES ('Qual o ano de lançamento do SEGA CD?');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (10, true, '1991');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (10, false, '1990');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (10, false, '1986');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (10, false, '1987');

INSERT INTO gamer_db.questao (descricao) VALUES ('Qual o ano de lançamento do Atari Jaguar?');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (11, true, '1993');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (11, false, '1990');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (11, false, '1986');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (11, false, '1989');

INSERT INTO gamer_db.questao (descricao) VALUES ('Qual o ano de lançamento do Playstation 1?');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (12, true, '1994');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (12, false, '1995');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (12, false, '1993');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (12, false, '1996');

INSERT INTO gamer_db.questao (descricao) VALUES ('Qual o ano de lançamento do Nintendo 64?');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (13, true, '1994');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (13, false, '1995');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (13, false, '1993');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (13, false, '1996');

INSERT INTO gamer_db.questao (descricao) VALUES ('Qual o ano de lançamento do Game Boy Color?');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (14, true, '1998');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (14, false, '2000');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (14, false, '1999');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (14, false, '1970');

INSERT INTO gamer_db.questao (descricao) VALUES ('Qual o ano de lançamento do Dreamcast?');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (15, true, '1998');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (15, false, '1995');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (15, false, '1993');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (15, false, '1996');

INSERT INTO gamer_db.questao (descricao) VALUES ('Qual o ano de lançamento do Playstation 2?');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (16, true, '2000');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (16, false, '2005');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (16, false, '1990');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (16, false, '1995');

INSERT INTO gamer_db.questao (descricao) VALUES ('Qual o ano de lançamento do Game Boy Advance?');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (17, true, '2001');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (17, false, '2006');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (17, false, '1991');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (17, false, '1996');

INSERT INTO gamer_db.questao (descricao) VALUES ('Qual o ano de lançamento do Xbox?');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (18, true, '2001');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (18, false, '2002');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (18, false, '1998');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (18, false, '2000');

INSERT INTO gamer_db.questao (descricao) VALUES ('Qual o ano de lançamento do Nintendo GameCube?');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (19, true, '2001');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (19, false, '2002');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (19, false, '1998');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (19, false, '2000');

INSERT INTO gamer_db.questao (descricao) VALUES ('Qual o ano de lançamento do Nintendo DS?');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (20, true, '2004');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (20, false, '2005');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (20, false, '1999');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (20, false, '2003');

INSERT INTO gamer_db.questao (descricao) VALUES ('Qual o ano de lançamento do PSP?');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (21, true, '2004');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (21, false, '2005');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (21, false, '1999');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (21, false, '2003');

INSERT INTO gamer_db.questao (descricao) VALUES ('Qual o ano de lançamento do Xbox 360?');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (22, true, '2005');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (22, false, '2006');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (22, false, '2000');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (22, false, '2004');

INSERT INTO gamer_db.questao (descricao) VALUES ('Qual o ano de lançamento do Playstation 3?');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (23, true, '2006');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (23, false, '2007');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (23, false, '2001');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (23, false, '2005');

INSERT INTO gamer_db.questao (descricao) VALUES ('Qual o ano de lançamento do Wii?');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (24, true, '2006');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (24, false, '2007');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (24, false, '2001');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (24, false, '2005');

INSERT INTO gamer_db.questao (descricao) VALUES ('O Nintendo 64 tem encaixe para quantos controles?');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (25, true, 'Quatro');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (25, false, 'Três');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (25, false, 'Dois');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (25, false, 'Um');

INSERT INTO gamer_db.questao (descricao) VALUES ('O Mega Drive tem encaixe para quantos controles?');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (26, true, 'Dois');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (26, false, 'Três');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (26, false, 'Quatro');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (26, false, 'Um');

INSERT INTO gamer_db.questao (descricao) VALUES ('O Super Nintendo tem encaixe para quantos controles?');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (27, true, 'Dois');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (27, false, 'Três');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (27, false, 'Quatro');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (27, false, 'Um');

INSERT INTO gamer_db.questao (descricao) VALUES ('O Playstation 1 tem encaixe para quantos controles?');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (28, true, 'Dois');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (28, false, 'Três');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (28, false, 'Quatro');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (28, false, 'Um');

INSERT INTO gamer_db.questao (descricao) VALUES ('O Playstation 2 tem encaixe para quantos controles?');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (29, true, 'Dois');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (29, false, 'Três');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (29, false, 'Quatro');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (29, false, 'Um');

INSERT INTO gamer_db.questao (descricao) VALUES ('Qual a cor predominante do Mega Drive?');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (30, true, 'Preto');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (30, false, 'Azul');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (30, false, 'Cinza');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (30, false, 'Branco');

INSERT INTO gamer_db.questao (descricao) VALUES ('Qual a cor predominante do Super Nintendo?');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (31, true, 'Cinza');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (31, false, 'Azul');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (31, false, 'Preto');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (31, false, 'Branco');

INSERT INTO gamer_db.questao (descricao) VALUES ('Qual a cor predominante do Playstation 2?');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (32, true, 'Preto');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (32, false, 'Azul');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (32, false, 'Cinza');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (32, false, 'Branco');

INSERT INTO gamer_db.questao (descricao) VALUES ('Quais destes botões existem no controle do Super Nintendo?');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (33, true, 'A, B, X, Y');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (33, false, 'A, B, C, D');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (33, false, 'L, R, C, D');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (33, false, 'Z, W, X, Y');

INSERT INTO gamer_db.questao (descricao) VALUES ('Quais destes botões existem no controle do Xbox 360?');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (34, true, 'A, B, X, Y');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (34, false, 'A, B, C, D');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (34, false, 'L, R, C, D');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (34, false, 'Z, W, X, Y');

INSERT INTO gamer_db.questao (descricao) VALUES ('O controle do Xbox 360 possui quantos analógicos?');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (35, true, 'Dois');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (35, false, 'Três');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (35, false, 'Quatro');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (35, false, 'Um');

INSERT INTO gamer_db.questao (descricao) VALUES ('O controle do Playstation 2 possui quantos analógicos?');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (36, true, 'Dois');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (36, false, 'Três');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (36, false, 'Quatro');
INSERT INTO gamer_db.opcao_resposta (id_questao, correta, descricao) VALUES (36, false, 'Um');