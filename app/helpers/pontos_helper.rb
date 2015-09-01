# -*- encoding : utf-8 -*-
module PontosHelper

  def detalhes(obj=nil,sigla=false)
    if obj
      if obj.respond_to? "nome" and !obj.nome.blank?
        return obj.nome.upcase
      elsif obj.respond_to? "sigla" and !obj.sigla.blank? and sigla==true
        return obj.sigla.upcase
      elsif obj.respond_to? "codigo" and !obj.codigo.blank? and sigla==true
        return obj.codigo.upcase
      elsif obj.respond_to? "nome" and !obj.nome.blank?
        return obj.nome.upcase
      elsif obj.respond_to? "username" and !obj.username.blank?
        return obj.username.upcase
      elsif obj.class==String and !obj.blank?
        return obj
      else
        return raw("<font color=red><b>Nada Cadastrado</b></font>")
      end
    else
      return raw("<font color=red><b>Nada Cadastrado</b></font>")
    end
  end

  def datas_especiais(d)

    data = d.to_date
    if data.feriado? and data.strftime("%A")=="Sábado"
      return  "FERIADO - SÁBADO"
    elsif data.feriado? and data.strftime("%A")=="Domingo"
      return  "FERIADO - DOMINGO"
    elsif data.feriado?
      return  "FERIADO"
    elsif data.strftime("%A")=="Sábado"
      return  "SÁBADO"
    elsif data.strftime("%A")=="Domingo"
      return "DOMINGO"
    end
  end

  def link_cadastro(f,d)
    if d.funcionarios_comissionados.include?(f)
      link = "#{link_to 'Gerar ponto',new_pessoa_funcionario_comissionado_ponto_path(f.pessoa,f,f.comissionados.find_by_departamento_id(d.id),:departamento=>d.sigla)}"
    elsif d.funcionarios.include?(f)
      link = "#{link_to 'Gerar ponto', new_pessoa_funcionario_lotacao_ponto_path(f.pessoa,f,d.lotacoes.find_by_funcionario_id(f.id),:departamento=>d.sigla)}"
    end
    return raw(link)
  end



  def colorir_data(d)
    data = d.to_date
    if data.feriado? or data.strftime("%A")=="Sábado" or data.strftime("%A")=="Domingo"
      return raw("<TR VALIGN=TOP style='background-color:LightGray;'>")
    else
      return raw("<TR VALIGN=TOP>")
    end
  end

end
