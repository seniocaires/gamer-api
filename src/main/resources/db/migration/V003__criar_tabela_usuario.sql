-- SEQUENCE

CREATE SEQUENCE gamer_db.usuario_seq INCREMENT 1 START 1;

-- TABELA

CREATE TABLE gamer_db.usuario (
	id BIGINT DEFAULT NEXTVAL('gamer_db.usuario_seq'::TEXT) NOT NULL,
	nome VARCHAR(30) NOT NULL,
	audio_fundo_ligado BOOLEAN NOT NULL,
	audio_efeitos_ligado BOOLEAN NOT NULL
);

-- CONSTRAINT

ALTER TABLE gamer_db.usuario ADD CONSTRAINT PK_usuario PRIMARY KEY (id);