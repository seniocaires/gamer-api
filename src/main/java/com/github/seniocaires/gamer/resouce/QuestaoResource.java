package com.github.seniocaires.gamer.resouce;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.github.seniocaires.gamer.model.Questao;
import com.github.seniocaires.gamer.repository.QuestaoRepository;
import com.github.seniocaires.gamer.repository.filter.QuestaoFilter;

@RestController
@RequestMapping("/questoes")
public class QuestaoResource {

	@Autowired
	private QuestaoRepository repository;

	@GetMapping
	public Page<Questao> pesquisar(QuestaoFilter filter, Pageable pageable) {
		return repository.filtrar(filter, pageable);
	}
}
