package com.github.seniocaires.gamer.model;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.validation.constraints.NotNull;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;

@Embeddable
@Getter
@Setter
@EqualsAndHashCode
public class ConfiguracaoUsuario {

	@NotNull
	@Column(name = "audio_fundo_ligado")
	private Boolean audioFundoLigado;

	@NotNull
	@Column(name = "audio_efeitos_ligado")
	private Boolean audioEfeitosLigado;
}
