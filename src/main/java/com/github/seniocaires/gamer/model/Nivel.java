package com.github.seniocaires.gamer.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(schema = "gamer_db")
@Getter
@Setter
@EqualsAndHashCode
public class Nivel {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@NotNull
	private Integer ordem;

	@NotNull
	@Enumerated(EnumType.ORDINAL)
	private Geracao geracao;

	@NotNull
	@Size(min = 2, max = 50)
	private String nome;

	@NotNull
	@Column(name = "quantidade_questoes")
	private Integer quantidadeQuestoes;
}
