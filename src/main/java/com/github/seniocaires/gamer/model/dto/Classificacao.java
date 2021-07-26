package com.github.seniocaires.gamer.model.dto;

import java.time.LocalDateTime;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@EqualsAndHashCode
public class Classificacao {

	private Integer ordem;
	
	private Integer pontos;

	private String nomeUsuario;

	@JsonFormat(pattern = "dd/MM/yyy HH:mm")
	private LocalDateTime data;

}
