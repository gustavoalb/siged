# -*- encoding : utf-8 -*-
module PessoasHelper



  def local(func)
   texto=""
   if !func.lotacoes.atual.none? and func.status_lotacao=="LOTADO" or func.status_lotacao=="EM TRÂNSITO"
     texto+="#{func.status_lotacao}/#{destino(func.lotacoes.inativa[0])}"
   elsif !func.lotacoes.size.nil? and func.status_lotacao=="À DISPOSIÇÃO"
    texto+="#{func.status_lotacao}"
  else texto+="#{func.status_lotacao}"
  end
  return texto
end

def l(func)
  if func and func.lotacoes.ativo.none?
    return "NÃO LOTADO"
  else
    return detalhes(func.lotacoes.ativo.first.destino)
  end
end

def loc(func)

end


def l_ant(func)
  if func and func.lotacoes.inativa.none?
    return "NADA CADASTRADO"
  else
    return detalhes(func.lotacoes.inativa('data_lotacao desc').first.destino)
  end
end


def foto(pessoa)
 resultado2=""
 if !pessoa.fotos.none?
  foto = pessoa.fotos.last
  resultado2+="<div class='overview_total'>"
  resultado2+="<p class='overview_day'>Fotografia</p>"
  resultado2+="<p class='overview_count'></p>"
  resultado2+="<p class='overview_type'>#{image_tag(foto.imagem.url(:foto))}</p>"
else
 resultado2+="<p class='overview_type'>#{image_tag('/images/noimage.png')}</p>"
 resultado2+="<p class='overview_tipo' align='center'>#{link_to 'Cadastrar Foto Usando a Web-Cam',new_pessoa_foto_path(@pessoa)}</p><br/>"

end
resultado2+="</div>"
return raw(resultado2)
end

def negritar(pessoa)
  html=""
  html+="<b>#{pessoa.nome}</b>"
  return raw(html)
end

end

