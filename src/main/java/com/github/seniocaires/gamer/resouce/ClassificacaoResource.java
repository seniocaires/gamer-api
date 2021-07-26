package com.github.seniocaires.gamer.resouce;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.github.seniocaires.gamer.model.dto.Classificacao;
import com.github.seniocaires.gamer.model.mapper.ClassificacaoMapper;
import com.github.seniocaires.gamer.repository.PartidaRepository;

@RestController
@RequestMapping("/classificacoes")
public class ClassificacaoResource {

	@Autowired
	private PartidaRepository partidaRepository;
	
	@GetMapping
	public List<Classificacao> classificacao() {
		return ClassificacaoMapper.dePartidaParaClassificacao(partidaRepository.classificacao());
	}
	
}
