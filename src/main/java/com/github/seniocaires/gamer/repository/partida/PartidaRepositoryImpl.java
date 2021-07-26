package com.github.seniocaires.gamer.repository.partida;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import com.github.seniocaires.gamer.model.Partida;

public class PartidaRepositoryImpl implements PartidaRepositoryQuery {

	@PersistenceContext
	private EntityManager manager;

	@SuppressWarnings("unchecked")
	public List<Partida> classificacao() {
		Query query = manager.createQuery("SELECT partida FROM Partida partida WHERE partida.termino IS NOT NULL ORDER BY partida.pontos DESC, partida.termino ASC",
				Partida.class);
		query.setMaxResults(20);
		return query.getResultList();
	}
}
