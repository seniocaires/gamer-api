package com.github.seniocaires.gamer.model;

import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Questao.class)
public abstract class Questao_ {

	public static volatile SingularAttribute<Questao, Long> id;
	public static volatile ListAttribute<Questao, OpcaoResposta> opcoesResposta;
	public static volatile SingularAttribute<Questao, String> descricao;

	public static final String ID = "id";
	public static final String OPCOES_RESPOSTA = "opcoesResposta";
	public static final String DESCRICAO = "descricao";

}

