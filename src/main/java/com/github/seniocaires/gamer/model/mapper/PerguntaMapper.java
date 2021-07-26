package com.github.seniocaires.gamer.model.mapper;

import com.github.seniocaires.gamer.model.Questao;
import com.github.seniocaires.gamer.model.dto.Pergunta;

public class PerguntaMapper {

	public static Pergunta deQuestaoParaPergunta(Questao de) {
		Pergunta para = new Pergunta();

		para.setId(de.getId());
		para.setDescricao(de.getDescricao());
		para.setAlternativas(AlternativaMapper.deOPcaoRespostaParaAlternativa(de.getOpcoesResposta()));

		return para;
	}
}
