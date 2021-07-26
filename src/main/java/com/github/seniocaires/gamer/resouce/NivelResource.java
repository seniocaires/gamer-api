package com.github.seniocaires.gamer.resouce;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.github.seniocaires.gamer.model.Nivel;
import com.github.seniocaires.gamer.repository.NivelRepository;

@RestController
@RequestMapping("/niveis")
public class NivelResource {

	@Autowired
	private NivelRepository repository;

	@GetMapping
	public List<Nivel> listar() {
		return repository.findAll();
	}
}
