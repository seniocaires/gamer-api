-- Este script deve ser executado para criar a estrutura inicial do banco de dados.

-- Atenção ao usuário no GRANT e OWNER

CREATE DATABASE "gamer" WITH TEMPLATE = template0 OWNER = postgres;
GRANT ALL ON DATABASE "gamer" TO postgres;
--\connect "gamer";
--SET client_encoding = 'UTF8';
--CREATE SCHEMA gamer_db;
--ALTER SCHEMA gamer_db OWNER TO postgres;
