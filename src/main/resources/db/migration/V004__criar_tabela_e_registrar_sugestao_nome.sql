-- SEQUENCE

CREATE SEQUENCE gamer_db.sugestao_nome_seq INCREMENT 1 START 1;

-- TABELA

CREATE TABLE gamer_db.sugestao_nome (
	id BIGINT DEFAULT NEXTVAL('gamer_db.sugestao_nome_seq'::TEXT) NOT NULL,
	descricao VARCHAR(30) NOT NULL
);

-- CONSTRAINT

ALTER TABLE gamer_db.sugestao_nome ADD CONSTRAINT PK_sugestao_nome PRIMARY KEY (id);

ALTER TABLE gamer_db.sugestao_nome
	ADD CONSTRAINT UQ_sugestao_nome_descricao UNIQUE (descricao)
;

-- INSERT

INSERT INTO gamer_db.sugestao_nome (descricao) VALUES ('Odyssey');
INSERT INTO gamer_db.sugestao_nome (descricao) VALUES ('Atari');
INSERT INTO gamer_db.sugestao_nome (descricao) VALUES ('GameBoy');
INSERT INTO gamer_db.sugestao_nome (descricao) VALUES ('Nintendo');
INSERT INTO gamer_db.sugestao_nome (descricao) VALUES ('Dreamcast');
INSERT INTO gamer_db.sugestao_nome (descricao) VALUES ('Xbox');
INSERT INTO gamer_db.sugestao_nome (descricao) VALUES ('Sony');
INSERT INTO gamer_db.sugestao_nome (descricao) VALUES ('Fulgore');
INSERT INTO gamer_db.sugestao_nome (descricao) VALUES ('Mario');
INSERT INTO gamer_db.sugestao_nome (descricao) VALUES ('Sonic');
INSERT INTO gamer_db.sugestao_nome (descricao) VALUES ('Tails');
INSERT INTO gamer_db.sugestao_nome (descricao) VALUES ('Luigi');
INSERT INTO gamer_db.sugestao_nome (descricao) VALUES ('Tusk');
INSERT INTO gamer_db.sugestao_nome (descricao) VALUES ('Banjo');
INSERT INTO gamer_db.sugestao_nome (descricao) VALUES ('Goldeneye');
INSERT INTO gamer_db.sugestao_nome (descricao) VALUES ('Turok');
INSERT INTO gamer_db.sugestao_nome (descricao) VALUES ('Blanka');
INSERT INTO gamer_db.sugestao_nome (descricao) VALUES ('Vega');
INSERT INTO gamer_db.sugestao_nome (descricao) VALUES ('Kratos');
INSERT INTO gamer_db.sugestao_nome (descricao) VALUES ('Ryu');
INSERT INTO gamer_db.sugestao_nome (descricao) VALUES ('Samus');
INSERT INTO gamer_db.sugestao_nome (descricao) VALUES ('Sephirot');
INSERT INTO gamer_db.sugestao_nome (descricao) VALUES ('Link');
INSERT INTO gamer_db.sugestao_nome (descricao) VALUES ('Snake');
INSERT INTO gamer_db.sugestao_nome (descricao) VALUES ('SubZero');
INSERT INTO gamer_db.sugestao_nome (descricao) VALUES ('Scorpion');
INSERT INTO gamer_db.sugestao_nome (descricao) VALUES ('Cloud');
INSERT INTO gamer_db.sugestao_nome (descricao) VALUES ('Yoshi');
INSERT INTO gamer_db.sugestao_nome (descricao) VALUES ('Raiden');
INSERT INTO gamer_db.sugestao_nome (descricao) VALUES ('Leon');
INSERT INTO gamer_db.sugestao_nome (descricao) VALUES ('Allejo');
INSERT INTO gamer_db.sugestao_nome (descricao) VALUES ('Goku');
INSERT INTO gamer_db.sugestao_nome (descricao) VALUES ('Dante');
INSERT INTO gamer_db.sugestao_nome (descricao) VALUES ('Alucard');
INSERT INTO gamer_db.sugestao_nome (descricao) VALUES ('PacMan');
INSERT INTO gamer_db.sugestao_nome (descricao) VALUES ('MegaMan');
INSERT INTO gamer_db.sugestao_nome (descricao) VALUES ('Fox');
INSERT INTO gamer_db.sugestao_nome (descricao) VALUES ('Pikachu');
INSERT INTO gamer_db.sugestao_nome (descricao) VALUES ('DukeNukem');
INSERT INTO gamer_db.sugestao_nome (descricao) VALUES ('Crash');
INSERT INTO gamer_db.sugestao_nome (descricao) VALUES ('Robotnik');
INSERT INTO gamer_db.sugestao_nome (descricao) VALUES ('DartVader');
INSERT INTO gamer_db.sugestao_nome (descricao) VALUES ('Hitman');

