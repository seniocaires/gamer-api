package com.github.seniocaires.gamer.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.Valid;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(schema = "gamer_db")
@Getter
@Setter
@EqualsAndHashCode
public class Questao {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@NotNull
	@Size(min = 1, max = 200)
	private String descricao;
	
	@Valid
	@NotEmpty
	@JsonIgnoreProperties("questao")
	@OneToMany(mappedBy = "questao", cascade = CascadeType.ALL, orphanRemoval = true)
	private List<OpcaoResposta> opcoesResposta;

}
