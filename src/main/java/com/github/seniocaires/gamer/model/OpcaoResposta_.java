package com.github.seniocaires.gamer.model;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(OpcaoResposta.class)
public abstract class OpcaoResposta_ {

	public static volatile SingularAttribute<OpcaoResposta, Boolean> correta;
	public static volatile SingularAttribute<OpcaoResposta, Long> id;
	public static volatile SingularAttribute<OpcaoResposta, Questao> questao;
	public static volatile SingularAttribute<OpcaoResposta, String> descricao;

	public static final String CORRETA = "correta";
	public static final String ID = "id";
	public static final String QUESTAO = "questao";
	public static final String DESCRICAO = "descricao";

}

