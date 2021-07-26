-- SEQUENCE

CREATE SEQUENCE gamer_db.partida_seq INCREMENT 1 START 1;

-- TABELA

CREATE TABLE gamer_db.partida (
	id BIGINT DEFAULT NEXTVAL('gamer_db.partida_seq'::TEXT) NOT NULL,
	inicio TIMESTAMP NOT NULL,
	termino TIMESTAMP,
	atualizacao TIMESTAMP NOT NULL,
	pontos INTEGER NOT NULL,
	id_usuario BIGINT NOT NULL
);

-- CONSTRAINT

ALTER TABLE gamer_db.partida ADD CONSTRAINT PK_partida PRIMARY KEY (id);

ALTER TABLE gamer_db.partida ADD CONSTRAINT FK_partida_usuario 
	FOREIGN KEY (id_usuario) REFERENCES gamer_db.usuario (id)
;