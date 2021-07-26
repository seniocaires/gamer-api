package com.github.seniocaires.gamer.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.github.seniocaires.gamer.model.SugestaoNome;
import com.github.seniocaires.gamer.repository.sugestaonome.SugestaoNomeRepositoryQuery;

public interface SugestaoNomeRepository extends JpaRepository<SugestaoNome, Long>, SugestaoNomeRepositoryQuery {

}
