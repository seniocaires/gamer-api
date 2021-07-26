package com.github.seniocaires.gamer.model;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Nivel.class)
public abstract class Nivel_ {

	public static volatile SingularAttribute<Nivel, Integer> quantidadeQuestoes;
	public static volatile SingularAttribute<Nivel, Integer> ordem;
	public static volatile SingularAttribute<Nivel, String> nome;
	public static volatile SingularAttribute<Nivel, Long> id;
	public static volatile SingularAttribute<Nivel, Geracao> geracao;

	public static final String QUANTIDADE_QUESTOES = "quantidadeQuestoes";
	public static final String ORDEM = "ordem";
	public static final String NOME = "nome";
	public static final String ID = "id";
	public static final String GERACAO = "geracao";

}

