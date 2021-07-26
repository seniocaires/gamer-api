package com.github.seniocaires.gamer.model.mapper;

import java.util.ArrayList;
import java.util.List;

import com.github.seniocaires.gamer.model.OpcaoResposta;
import com.github.seniocaires.gamer.model.dto.Alternativa;

public class AlternativaMapper {

	public static Alternativa deOPcaoRespostaParaAlternativa(OpcaoResposta de) {
		Alternativa para = new Alternativa();
		para.setId(de.getId());
		para.setDescricao(de.getDescricao());
		return para;
	}

	public static List<Alternativa> deOPcaoRespostaParaAlternativa(List<OpcaoResposta> de) {
		List<Alternativa> para = new ArrayList<>();
		for (OpcaoResposta opcaoResposta : de) {
			para.add(deOPcaoRespostaParaAlternativa(opcaoResposta));
		}
		return para;
	}
}
