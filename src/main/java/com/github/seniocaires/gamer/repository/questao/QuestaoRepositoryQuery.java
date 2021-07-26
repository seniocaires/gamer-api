package com.github.seniocaires.gamer.repository.questao;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.github.seniocaires.gamer.model.Questao;
import com.github.seniocaires.gamer.repository.filter.QuestaoFilter;

public interface QuestaoRepositoryQuery {

	public Page<Questao> filtrar(QuestaoFilter filter, Pageable pageable);
	
	public Questao buscarAleatoria();
}
