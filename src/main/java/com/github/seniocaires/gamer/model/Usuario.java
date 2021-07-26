package com.github.seniocaires.gamer.model;

import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PrePersist;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(schema = "gamer_db", name = "usuario")
@Getter
@Setter
@EqualsAndHashCode
public class Usuario {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@NotNull
	@NotEmpty
	@Size(min = 1, max = 30)
	private String nome;

	@Embedded
	private ConfiguracaoUsuario configuracao;

	@PrePersist
	public void prePersist() {
		if (this.configuracao == null) {
			this.configuracao = new ConfiguracaoUsuario();
			this.configuracao.setAudioFundoLigado(Boolean.TRUE);
			this.configuracao.setAudioEfeitosLigado(Boolean.TRUE);
		}
	}
}
