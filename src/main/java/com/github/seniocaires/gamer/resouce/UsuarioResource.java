package com.github.seniocaires.gamer.resouce;

import java.time.LocalDateTime;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.github.seniocaires.gamer.model.Usuario;
import com.github.seniocaires.gamer.repository.SugestaoNomeRepository;
import com.github.seniocaires.gamer.repository.UsuarioRepository;

@RestController
@RequestMapping("/usuarios")
public class UsuarioResource {

	@Autowired
	private UsuarioRepository repository;

	@Autowired
	private SugestaoNomeRepository sugestaoNomeRepository;

	@PostMapping
	public Usuario criar() {

		Usuario usuario = new Usuario();
		usuario.setNome(String.valueOf(LocalDateTime.now().getNano()));
		usuario = repository.save(usuario);
		usuario.setNome(sugestaoNomeRepository.buscarAleatoria().getDescricao() + usuario.getId());

		return repository.save(usuario);
	}

	@PutMapping
	public Usuario atualizar(@Valid @RequestBody Usuario usuario) {
		return repository.save(usuario);
	}
}
