package com.github.seniocaires.gamer.resouce;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.github.seniocaires.gamer.model.dto.Pergunta;
import com.github.seniocaires.gamer.model.mapper.PerguntaMapper;
import com.github.seniocaires.gamer.repository.QuestaoRepository;

@RestController
@RequestMapping("/perguntas")
public class PerguntaResource {

	@Autowired
	private QuestaoRepository questaoRepository;

	@GetMapping
	public Pergunta buscar() {
		return PerguntaMapper.deQuestaoParaPergunta(questaoRepository.buscarAleatoria());
	}
}
