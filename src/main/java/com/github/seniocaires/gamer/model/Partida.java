package com.github.seniocaires.gamer.model;

import java.time.LocalDateTime;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(schema = "gamer_db")
@Getter
@Setter
@EqualsAndHashCode
public class Partida {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@JsonFormat(pattern = "dd/MM/yyy HH:mm:ss")
	@NotNull
	private LocalDateTime inicio;

	@JsonFormat(pattern = "dd/MM/yyy HH:mm:ss")
	private LocalDateTime termino;

	@JsonFormat(pattern = "dd/MM/yyy HH:mm:ss")
	@NotNull
	private LocalDateTime atualizacao;

	@NotNull
	private Integer pontos;
	
	@NotNull
	@ManyToOne
	@JoinColumn(name = "id_usuario")
	private Usuario usuario;

	@PrePersist
	public void prePersist() {
		LocalDateTime inicializacao = LocalDateTime.now();
		setInicio(inicializacao);
		setAtualizacao(inicializacao);
		setPontos(0);
	}

	@PreUpdate
	public void preUpdate() {
		setAtualizacao(LocalDateTime.now());
	}

	@JsonIgnore
	@Transient
	public void adicionarPontos() {
		setPontos(getPontos() + 1);
	}
}
