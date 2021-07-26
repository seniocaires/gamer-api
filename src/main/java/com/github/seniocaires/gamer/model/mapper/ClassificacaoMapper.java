package com.github.seniocaires.gamer.model.mapper;

import java.util.ArrayList;
import java.util.List;

import com.github.seniocaires.gamer.model.Partida;
import com.github.seniocaires.gamer.model.dto.Classificacao;

public class ClassificacaoMapper {

	public static List<Classificacao> dePartidaParaClassificacao(List<Partida> de) {
		List<Classificacao> para = new ArrayList<>();
		Integer indice = 1;
		for (Partida partida : de) {

			Classificacao classificacao = new Classificacao();
			classificacao.setOrdem(indice);
			classificacao.setNomeUsuario(partida.getUsuario().getNome());
			classificacao.setPontos(partida.getPontos());
			classificacao.setData(partida.getTermino());

			para.add(classificacao);

			indice++;
		}
		return para;
	}
}
