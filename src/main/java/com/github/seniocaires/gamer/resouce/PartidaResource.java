package com.github.seniocaires.gamer.resouce;

import javax.validation.Valid;
import javax.validation.constraints.NotNull;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.server.ResponseStatusException;

import com.github.seniocaires.gamer.model.Partida;
import com.github.seniocaires.gamer.model.Usuario;
import com.github.seniocaires.gamer.model.dto.Resposta;
import com.github.seniocaires.gamer.repository.PartidaRepository;
import com.github.seniocaires.gamer.repository.UsuarioRepository;
import com.github.seniocaires.gamer.service.PartidaService;

@RestController
@RequestMapping("/partidas")
public class PartidaResource {

	@Autowired
	private PartidaRepository repository;

	@Autowired
	private PartidaService service;

	@Autowired
	private UsuarioRepository usuarioRepository;

	@PostMapping
	public Partida criar(@NotNull @RequestHeader(name = "Authorization") String autorization) {
		Usuario usuario = this.usuarioRepository.findById(Long.valueOf(autorization))
				.orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND));
		Partida novaPartida = new Partida();
		novaPartida.setUsuario(usuario);
		return repository.save(novaPartida);
	}

	@PatchMapping("/{id}/resposta")
	public Partida resposta(@Valid @RequestBody Resposta resposta, @NotNull @PathVariable Long id) {
		return service.cadastrarResposta(id, resposta);
	}

	@PatchMapping("/{id}/encerrar")
	public Partida encerrar(@NotNull @PathVariable Long id) {
		return service.encerrar(id);
	}
}
