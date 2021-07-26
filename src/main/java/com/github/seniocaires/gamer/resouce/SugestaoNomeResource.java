package com.github.seniocaires.gamer.resouce;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.github.seniocaires.gamer.model.SugestaoNome;
import com.github.seniocaires.gamer.repository.SugestaoNomeRepository;

@RestController
@RequestMapping("/sugestoesnomes")
public class SugestaoNomeResource {

	@Autowired
	private SugestaoNomeRepository repository;

	@GetMapping
	public SugestaoNome buscar() {
		return repository.buscarAleatoria();
	}
}
