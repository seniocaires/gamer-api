package com.github.seniocaires.gamer.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.github.seniocaires.gamer.model.Usuario;

public interface UsuarioRepository extends JpaRepository<Usuario, Long> {

}
