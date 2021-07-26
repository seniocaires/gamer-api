-- SEQUENCE

CREATE SEQUENCE gamer_db.nivel_seq INCREMENT 1 START 1;

-- TABELA

CREATE TABLE gamer_db.nivel (
	id BIGINT DEFAULT NEXTVAL('gamer_db.nivel_seq'::TEXT) NOT NULL,
	ordem INTEGER NOT NULL,
	geracao INTEGER NOT NULL,
	nome VARCHAR(50) NOT NULL,
	quantidade_questoes INTEGER NOT NULL
);

-- CONSTRAINT

ALTER TABLE gamer_db.nivel ADD CONSTRAINT PK_nivel PRIMARY KEY (id);

ALTER TABLE gamer_db.nivel
	ADD CONSTRAINT UQ_nivel_nome UNIQUE (nome)
;

-- INSERT

INSERT INTO gamer_db.nivel (ordem, geracao, nome, quantidade_questoes) VALUES (1, 0, 'Odyssey', 2);
INSERT INTO gamer_db.nivel (ordem, geracao, nome, quantidade_questoes) VALUES (2, 1, 'Atari', 2);
INSERT INTO gamer_db.nivel (ordem, geracao, nome, quantidade_questoes) VALUES (3, 2, 'Game boy', 2);
INSERT INTO gamer_db.nivel (ordem, geracao, nome, quantidade_questoes) VALUES (4, 2, 'Master System', 2);
INSERT INTO gamer_db.nivel (ordem, geracao, nome, quantidade_questoes) VALUES (5, 2, 'NES/Famicom', 2);
INSERT INTO gamer_db.nivel (ordem, geracao, nome, quantidade_questoes) VALUES (6, 3, 'Mega Drive', 2);
INSERT INTO gamer_db.nivel (ordem, geracao, nome, quantidade_questoes) VALUES (7, 3, 'Super Nintendo', 2);
INSERT INTO gamer_db.nivel (ordem, geracao, nome, quantidade_questoes) VALUES (8, 4, 'Playstation 1', 2);
INSERT INTO gamer_db.nivel (ordem, geracao, nome, quantidade_questoes) VALUES (9, 4, 'Game Boy Color', 2);
INSERT INTO gamer_db.nivel (ordem, geracao, nome, quantidade_questoes) VALUES (10, 4, 'Nintendo 64', 2);
INSERT INTO gamer_db.nivel (ordem, geracao, nome, quantidade_questoes) VALUES (11, 5, 'Dreamcast', 2);
INSERT INTO gamer_db.nivel (ordem, geracao, nome, quantidade_questoes) VALUES (12, 5, 'Playstation 2', 2);
INSERT INTO gamer_db.nivel (ordem, geracao, nome, quantidade_questoes) VALUES (13, 5, 'Nintendo GameCube', 2);
INSERT INTO gamer_db.nivel (ordem, geracao, nome, quantidade_questoes) VALUES (14, 5, 'Game Boy Advance', 2);
INSERT INTO gamer_db.nivel (ordem, geracao, nome, quantidade_questoes) VALUES (15, 6, 'Xbox', 2);
INSERT INTO gamer_db.nivel (ordem, geracao, nome, quantidade_questoes) VALUES (16, 6, 'Nintendo DS', 2);
INSERT INTO gamer_db.nivel (ordem, geracao, nome, quantidade_questoes) VALUES (17, 6, 'PSP', 2);
INSERT INTO gamer_db.nivel (ordem, geracao, nome, quantidade_questoes) VALUES (18, 6, 'Xbox 360', 2);
--INSERT INTO gamer_db.nivel (ordem, geracao, nome, quantidade_questoes) VALUES (19, 6, 'Playstation 3', 2);
--INSERT INTO gamer_db.nivel (ordem, geracao, nome, quantidade_questoes) VALUES (20, 6, 'Wii', 2);
--INSERT INTO gamer_db.nivel (ordem, geracao, nome, quantidade_questoes) VALUES (21, 7, 'Nintendo 3DS', 2);
--INSERT INTO gamer_db.nivel (ordem, geracao, nome, quantidade_questoes) VALUES (22, 7, 'XBox One', 2);
--INSERT INTO gamer_db.nivel (ordem, geracao, nome, quantidade_questoes) VALUES (23, 7, 'Playstation 4', 2);
--INSERT INTO gamer_db.nivel (ordem, geracao, nome, quantidade_questoes) VALUES (24, 7, 'Nintendo Switch', 2);
--INSERT INTO gamer_db.nivel (ordem, geracao, nome, quantidade_questoes) VALUES (25, 8, 'XBox Series X/S', 2);
--INSERT INTO gamer_db.nivel (ordem, geracao, nome, quantidade_questoes) VALUES (26, 8, 'Playstation 5', 2);
