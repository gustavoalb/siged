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
  texto=""
  if func.lotacoes.atual.none? and func.lotacoes.inativa.none? and !func.lotacao_recad.blank?
   texto+= "<b><font color=red>NÃO LOTADO</font></b>"
 elsif func.lotacoes.atual.none? and func.lotacoes.inativa.none? and func.lotacao_recad.blank?
   texto+= "<b><font color=red>NÃO LOTADO</font></b>"
 elsif func.lotacoes.atual.none? and !func.lotacoes.inativa.none? and !func.lotacao_recad.blank?
   texto+= "#{func.status_lotacao}"
 elsif !func.lotacoes.atual.none? and !func.lotacoes.atual[0].ambiente_id.nil?
  texto+= "#{destino(func.lotacoes.atual[0])}/#{func.lotacoes.atual[0].ambiente.nome}"
else
  texto+= "#{destino(func.lotacoes.atual[0])}"
end
return raw(texto)
end

def loc(func)
  texto=""
  if func.lotacoes.atual.none? and !func.lotacao_recad.blank?
   texto+= "#{func.lotacao_recad}"
 elsif func.lotacoes.atual.none? and func.lotacao_recad.blank?
   texto+= "<b><font color=red>NÃO LOTADO</font></b>"
 elsif !func.lotacoes.atual.none? and !func.lotacao_recad.blank? and !func.lotacoes.atual[0].ambiente_id.nil?
  texto+= "#{destino(func.lotacoes.atual[0])}/#{func.lotacoes.atual[0].ambiente.nome}"
else
  texto+= "#{destino(func.lotacoes.atual[0])}"
end
return raw(texto)
end


def l_ant(func)
  texto=""
  if func.lotacoes.atual.none? and func.lotacoes.inativa.none? and !func.lotacao_recad.blank?
   texto+= "#{func.lotacao_recad}"
 elsif func.lotacoes.atual.none? and func.lotacao_recad.blank? and func.lotacoes.inativa.none?
   texto+= "<b><font color=red>NÃO LOTADO</font></b>"
 else
  texto+= "#{destino(func.lotacoes.inativa[-1])}"
end
return raw(texto)
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

