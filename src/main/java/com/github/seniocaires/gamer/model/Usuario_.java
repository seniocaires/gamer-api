package com.github.seniocaires.gamer.model;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Usuario.class)
public abstract class Usuario_ {

	public static volatile SingularAttribute<Usuario, ConfiguracaoUsuario> configuracao;
	public static volatile SingularAttribute<Usuario, String> nome;
	public static volatile SingularAttribute<Usuario, Long> id;

	public static final String CONFIGURACAO = "configuracao";
	public static final String NOME = "nome";
	public static final String ID = "id";

}

