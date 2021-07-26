package com.github.seniocaires.gamer.model.dto;

import java.util.List;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@EqualsAndHashCode
public class Pergunta {

	@NotNull
	private Long id;

	private String descricao;
	
	@NotEmpty
	private List<Alternativa> alternativas;
}
