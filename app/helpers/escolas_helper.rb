module EscolasHelper

 def necessidade_professor_e(escola,tipo='table')
     necessidade=""
     professor40=0
     professor20=0
     somafator=0
     p40=0
     p20=0
     ent=""
     somarfator=0
     resultado="<table class='tablesorter' cellspacing='0'><thead><tr><th>CHS</th><th>Professor 40</th><th>Professor 20</th></tr></thead></tbody>"
          escola.turmas.each do |t|
                     t.serie.disciplinas.each do |d|
                      p40 += Float(d.fator(t))/26
                      if p40<0.5
                         p40+=0.4
                      end
                      p20 += Float(d.fator(t))/12
                      if p20<0.5
                         p20+=0.4
                      end

                      professor40+=p40.round
                      professor20+=p20.round
                      somafator+=d.fator(t)
                      end
                      
                      
     end
              resultado+="<td>#{somafator}</td><td>#{p40.round}</td><td>#{p20.round}</td></tr>"
             resultado+="</tbody></table>"
             
             resultado2="<article class='stats_overview'><div class='overview_today'>"
             resultado2+="<p class='overview_day'>Carências</p>"
             resultado2+="<p class='overview_count'>#{somafator}</p>"
             resultado2+="<p class='overview_type'>Carência Semanal em Horas</p>"
             resultado2+="<p class='overview_count'>#{p40.round}</p>"
             resultado2+="<p class='overview_type'>Professores 40 Horas</p>"
             resultado2+="<p class='overview_type'><b>Ou</b></p>"
             resultado2+="<p class='overview_count'>#{p20.round}</p>"
             resultado2+="<p class='overview_type'>Professores 20 Horas</p></div></article>"
             if tipo=='table' 
                return raw(resultado)
              else
                 return raw(resultado2)
              end
    end

def especificar_l(l)
html=""
    if l.finalizada and l.especificacao
     html+="Lotação Especificada"
    else
     html+="#{link_to  image_tag('/images/117-todo.png',:title=>'Especificar Lotação'), pessoa_funcionario_lotaco_especificar_lotacao_path(@pessoa,@funcionario,l.id,@escola),:rel=>'facebox',:rev=>'height:300px;width:500px'}"
    end
return raw(html)
end


def total_escolas
 lotacoes_total = 0
 a = Escola.all
 a.each do |e|
   lotacoes_total+=e.lotacoes.size
end
             resultado2="<div class='overview_today'>"
             resultado2+="<p class='overview_day'>Dados Escolares</p>"
             resultado2+="<p class='overview_count'>#{a.size}</p>"
             resultado2+="<p class='overview_type'>Escolas Cadastradas</p>"
             resultado2+="<p class='overview_count'>#{lotacoes_total}</p>"
             resultado2+="<p class='overview_type'>Professores Lotados</p>"

  return raw(resultado2)
end


end
