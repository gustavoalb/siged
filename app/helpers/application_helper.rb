module ApplicationHelper
  include ScopedSearch::Helpers

  def pdf_image_tag(image, options = {})
   caminho="../../../"+image
   options[:src] = File.expand_path(RAILS_ROOT) + '/public/images' + image
   tag(:img, options)
   return caminho
 end

 def log(obj)
  if obj and !obj.usuario.blank?
    return raw("<b>#{obj.usuario.upcase}</b>")
  else
   return raw("<font color=red><b>Nada Cadastrado</b></font>")
 end
end


def s_listas(p)
  if p.listas.size>0
    return p.listas.collect{|c|c.tipo_lista.nome}.to_sentence
  else
    return "Não está incluso em nenhuma lista"
  end
end

def porcentagem_funcional
  html=""


  html+="<div class='spacer'></div>"
  html+="<article class='module width_quarter'>"
  html+="<div class='overview_today'>"
  html+="<p class='overview_day'>Estatísticas</p>"
  html+="<p class='overview_count'>#{Funcionario.disciplina_def.count}</p>"
  html+="<p class='overview_type'>Disciplinas de contratação especificadas</p>"
  html+="<p class='overview_count'>#{Lotacao.regular.ativo.count}</p>"
  html+="<p class='overview_type'>Lotações Regulares</p>"
  html+="<p class='overview_count'>#{Lotacao.especial.ativo.count}</p>"
  html+="<p class='overview_type'>Lotações Especiais</p>"
  html+="<p class='overview_count'>#{Lotacao.sumaria.ativo.count}</p>"
  html+="<p class='overview_type'>Lotações Sumárias</p>"
  html+="<p class='overview_count'>#{Lotacao.sumaria_especial.ativo.count}</p>"
  html+="<p class='overview_type'>Lotações Sumárias Especiais</p>"
  html+="<p class='overview_count'>#{Lotacao.pro_labore.ativo.count}</p>"
  html+="<p class='overview_type'>Lotações Pro Labore</p>  </article></div>"
  return raw(html)

end

def mensagens
  message = ""
  if notice
   message+="<h4 class='alert_success'>#{notice}</h4>"
 elsif alert
  message+="<h4 class='alert_error'>#{alert}</h4>"
end
raw(message)
end


def mensagens_login
  message = ""
  if notice
   message+="<h4 class='alert_success'>#{notice}</h4>"
 elsif alert
  message+="<h4 class='alert_warning'>#{alert}</h4>"
end
raw(message)
end

def status_lotacao(status)
  message=""
  if status=='ENCAMINHADO'
    message+="<h7 class='mess_warning'>#{status}</h7>"
  elsif status=='À DISPOSIÇÃO DO NUPES'
    message+="<h7 class='mess_warning'>#{status}</h7>"
  elsif status=='CANCELADO'
    message+="<h7 class='mess_error'>#{status}</h7>"
  elsif status=='LOTADO'
    message+="<h7 class='mess_success'>#{status}</h7> "
  elsif status=='NÃO LOTADO'
    message+="<h7 class='mess_error'>#{status}</h7>"
  elsif status=='EM TRÂNSITO'
    message+="<h7 class='mess_warning'>#{status}</h7>"

  else
    message=status
  end
  raw(message)
end



def compativel(mess,comp)
 message=""
 if comp
   message+="<h5 class='alert_success'>#{mess}</h5>"
 else
   message+="<h5 class='alert_error'>#{mess}</h5>"
 end
 return raw(message)
end


def status(processo)
  s=Status.find :last,:conditions=>["processo_id=?",processo.id]
  if s
    return s.status
  else
    return "Processo sem status ativo"
  end
end



def sim_nao(objeto)
  if objeto==true
    return "Sim"
  else
    return "Não"
  end
end


def com_regencia(objeto)
  if objeto==true
    return " fazendo jus à regência de classe."
  else
    return " não fazendo jus à regência de classe."
  end
end

def tp_lotacao(lotacao)
  case lotacao
  when 'LOTACAO_REGULAR' then return 'LOTAÇÃO REGULAR'
  end
end

def rsn(jornada)
 if jornada=='40'
   return '26'
 elsif jornada=='20'
   return '12'
 end
end

def link_relativo(args)
  html=""

  args.each do |l|
   if l==true
    html+="<div class='breadcrumb_divider'></div><a href=#{:link} class='current'>#{:texto}</a>"
  else
    html+="<div class='breadcrumb_divider'></div><a href=#{:link} >#{:texto}</a>"
  end
end
return raw(html)

#if current_page?()

end

def detalhes(obj)
 if obj
  if obj.respond_to? "nome_da_escola"
    return obj.nome_da_escola.upcase
  elsif obj.respond_to? "nome"
    return obj.nome.upcase
  end
else
 return raw("<font color=red><b>Nada Cadastrado</b></font>")
end
end
end

def placeholder(obj)
 if obj
   if obj.respond_to? "sigla"
    return obj.sigla
  else
    return obj.nome
  end
else
 return raw("Nada Cadastrado")
end
end

def cargo_disciplina(func)
  if func.cargo and func.cargo.tipo and func.cargo.tipo.nome=='Magistério/Docência' and func.disciplina_contratacao and func.nivel
    return "#{func.cargo.nome.upcase} DE #{func.disciplina_contratacao.nome.upcase}, #{func.nivel.nome.upcase}"
  elsif func.cargo and func.nivel and func.disciplina_contratacao.nil? and func.cargo.tipo and func.cargo.tipo.nome=='Magistério/Docência'
    return "#{func.cargo.nome.upcase}, #{func.nivel.nome.upcase}"
  elsif func.cargo and func.nivel and func.disciplina_contratacao.nil? and func.cargo.tipo and func.cargo.tipo.nome=='Comissão'
    return "#{func.nivel.nome.upcase}"
  elsif func.cargo and func.nivel and func.disciplina_contratacao.nil? and func.cargo.tipo
    return "#{func.cargo.nome.upcase}, #{func.nivel.nome.upcase}"
  elsif func.cargo and func.nivel and func.disciplina_contratacao.nil? and func.cargo.tipo.nil?
    return "#{func.nivel.nome.upcase}"
  else
    return raw("<font color=red><b>Nada Cadastrado</b></font>")
  end
end




def detalhes_str(obj)
 if obj
  return obj
else
 return raw("<font color=red><b>Nada Cadastrado</b></font>")
end
end

def jornada(obj)
 if obj and obj.jornada
  return "#{obj.jornada} horas semanais"
else
 return raw("<font color=red><b>Nada Cadastrado</b></font>")
end
end

def email(obj)
  if obj and obj.pessoa and !obj.pessoa.email.blank?
    return obj.pessoa.email
  else
   return raw("<font color=red><b>Nada Cadastrado</b></font>")
 end
end

def telefones(obj)
  if obj
   if obj.pessoa and !obj.pessoa.telefone_residencial.blank? and !obj.pessoa.telefone_celular.blank?
    return "#{obj.pessoa.telefone_residencial} / #{obj.pessoa.telefone_celular}"
  elsif obj.pessoa and obj.pessoa.telefone_residencial.blank? and !obj.pessoa.telefone_celular.blank?
    return "#{obj.pessoa.telefone_celular}"
  elsif obj.pessoa and !obj.pessoa.telefone_residencial.blank? and obj.pessoa.telefone_celular.blank?
    return "#{obj.pessoa.telefone_residencial}"
  end
else
 return raw("<font color=red><b>Nada Cadastrado</b></font>")
end
end



def cod(obj)
 if obj
  return obj.codigo
else
 return raw("<font color=red><b>Nada Cadastrado</b></font>")
end
end
