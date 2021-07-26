package com.github.seniocaires.gamer.repository.sugestaonome;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import com.github.seniocaires.gamer.model.SugestaoNome;

public class SugestaoNomeRepositoryImpl implements SugestaoNomeRepositoryQuery {

	@PersistenceContext
	private EntityManager manager;

	public SugestaoNome buscarAleatoria() {
		Query query = manager.createQuery("SELECT sugestaoNome FROM SugestaoNome sugestaoNome ORDER BY RAND()",
				SugestaoNome.class);
		query.setMaxResults(1);
		return (SugestaoNome) query.getSingleResult();
	}
}
