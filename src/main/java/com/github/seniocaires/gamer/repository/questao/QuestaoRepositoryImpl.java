package com.github.seniocaires.gamer.repository.questao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.apache.commons.lang3.StringUtils;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;

import com.github.seniocaires.gamer.model.Questao;
import com.github.seniocaires.gamer.model.Questao_;
import com.github.seniocaires.gamer.repository.filter.QuestaoFilter;

public class QuestaoRepositoryImpl implements QuestaoRepositoryQuery {

	@PersistenceContext
	private EntityManager manager;

	@Override
	public Page<Questao> filtrar(QuestaoFilter filter, Pageable pageable) {
		CriteriaBuilder builder = manager.getCriteriaBuilder();
		CriteriaQuery<Questao> criteria = builder.createQuery(Questao.class);
		Root<Questao> root = criteria.from(Questao.class);

		Predicate[] predicates = criarRestricoes(filter, builder, root);
		criteria.where(predicates);

		TypedQuery<Questao> query = manager.createQuery(criteria);
		adicionarRestricoesDePaginacao(query, pageable);

		return new PageImpl<>(query.getResultList(), pageable, total(filter));
	}

	private Predicate[] criarRestricoes(QuestaoFilter filter, CriteriaBuilder builder, Root<Questao> root) {
		List<Predicate> predicates = new ArrayList<>();

		if (!StringUtils.isEmpty(filter.getDescricao())) {
			predicates.add(builder.like(builder.lower(root.get(Questao_.descricao)),
					"%" + filter.getDescricao().toLowerCase() + "%"));
		}

		return predicates.toArray(new Predicate[predicates.size()]);
	}

	private void adicionarRestricoesDePaginacao(TypedQuery<?> query, Pageable pageable) {
		int paginaAtual = pageable.getPageNumber();
		int totalRegistrosPorPagina = pageable.getPageSize();
		int primeiroRegistroDaPagina = paginaAtual * totalRegistrosPorPagina;

		query.setFirstResult(primeiroRegistroDaPagina);
		query.setMaxResults(totalRegistrosPorPagina);
	}

	private Long total(QuestaoFilter filter) {
		CriteriaBuilder builder = manager.getCriteriaBuilder();
		CriteriaQuery<Long> criteria = builder.createQuery(Long.class);
		Root<Questao> root = criteria.from(Questao.class);

		Predicate[] predicates = criarRestricoes(filter, builder, root);
		criteria.where(predicates);

		criteria.select(builder.count(root));
		return manager.createQuery(criteria).getSingleResult();
	}

	public Questao buscarAleatoria() {
		Query query = manager.createQuery(
				"SELECT questao FROM Questao questao LEFT JOIN FETCH questao.opcoesResposta ORDER BY RAND()", Questao.class);
		query.setMaxResults(1);
		return (Questao) query.getSingleResult();
	}
}
