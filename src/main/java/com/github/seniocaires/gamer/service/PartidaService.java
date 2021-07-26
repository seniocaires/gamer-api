package com.github.seniocaires.gamer.service;

import java.time.LocalDateTime;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.web.server.ResponseStatusException;

import com.github.seniocaires.gamer.model.OpcaoResposta;
import com.github.seniocaires.gamer.model.Partida;
import com.github.seniocaires.gamer.model.Questao;
import com.github.seniocaires.gamer.model.dto.Resposta;
import com.github.seniocaires.gamer.repository.PartidaRepository;
import com.github.seniocaires.gamer.repository.QuestaoRepository;

@Service
public class PartidaService {

	@Autowired
	private PartidaRepository repository;

	@Autowired
	private QuestaoRepository questaoRepository;

	public Partida cadastrarResposta(Long idPartida, Resposta resposta) {
		Partida partida = repository.findById(idPartida)
				.orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND));
		Questao questao = questaoRepository.findById(resposta.getIdQuestao())
				.orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND));

		if (partida.getTermino() != null) {
			throw new ResponseStatusException(HttpStatus.NOT_FOUND);
		}

		boolean respostaInvalida = true;
		for (OpcaoResposta opcaoResposta : questao.getOpcoesResposta()) {
			if (opcaoResposta.getId().equals(resposta.getIdResposta())) {
				respostaInvalida = false;
				if (opcaoResposta.getCorreta()) {
					partida.adicionarPontos();
				} else {
					partida.setTermino(LocalDateTime.now());
				}
				break;
			}
		}

		if (respostaInvalida) {
			throw new ResponseStatusException(HttpStatus.NOT_FOUND);
		}

		return repository.save(partida);
	}

	public Partida encerrar(Long idPartida) {
		Partida partida = repository.findById(idPartida)
				.orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND));
		partida.setTermino(LocalDateTime.now());
		return repository.save(partida);
	}
}
