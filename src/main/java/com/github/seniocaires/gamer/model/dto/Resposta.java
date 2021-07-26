package com.github.seniocaires.gamer.model.dto;

import javax.validation.constraints.NotNull;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@EqualsAndHashCode
public class Resposta {

	@NotNull
	private Long idQuestao;

	@NotNull
	private Long idResposta;
}
