package com.github.seniocaires.gamer.model;

import java.time.LocalDateTime;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Partida.class)
public abstract class Partida_ {

	public static volatile SingularAttribute<Partida, LocalDateTime> atualizacao;
	public static volatile SingularAttribute<Partida, Integer> pontos;
	public static volatile SingularAttribute<Partida, LocalDateTime> inicio;
	public static volatile SingularAttribute<Partida, Usuario> usuario;
	public static volatile SingularAttribute<Partida, Long> id;
	public static volatile SingularAttribute<Partida, LocalDateTime> termino;

	public static final String ATUALIZACAO = "atualizacao";
	public static final String PONTOS = "pontos";
	public static final String INICIO = "inicio";
	public static final String USUARIO = "usuario";
	public static final String ID = "id";
	public static final String TERMINO = "termino";

}

