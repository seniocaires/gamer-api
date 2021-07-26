package com.github.seniocaires.gamer.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.github.seniocaires.gamer.model.Partida;
import com.github.seniocaires.gamer.repository.partida.PartidaRepositoryQuery;

public interface PartidaRepository extends JpaRepository<Partida, Long>, PartidaRepositoryQuery {

}
