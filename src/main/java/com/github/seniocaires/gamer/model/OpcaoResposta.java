package com.github.seniocaires.gamer.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(schema = "gamer_db", name = "opcao_resposta")
@Getter
@Setter
@EqualsAndHashCode
public class OpcaoResposta {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@NotNull
	@Size(min = 1, max = 100)
	private String descricao;

	@NotNull
	private Boolean correta;

	@ManyToOne
	@JoinColumn(name = "id_questao")
	private Questao questao;

}
