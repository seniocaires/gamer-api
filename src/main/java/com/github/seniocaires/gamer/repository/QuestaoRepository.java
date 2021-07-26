package com.github.seniocaires.gamer.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.github.seniocaires.gamer.model.Questao;
import com.github.seniocaires.gamer.repository.questao.QuestaoRepositoryQuery;

public interface QuestaoRepository extends JpaRepository<Questao, Long>, QuestaoRepositoryQuery {

}
