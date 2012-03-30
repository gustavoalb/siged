class LotacaoAtual < Lotacao
	default_scope where("finalizada = ? and ativo = ? and complementar = ?",true,true,false)
end