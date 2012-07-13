class Disciplina < ActiveRecord::Base
#has_and_belongs_to_many :matrizes
 has_many :fatores,:class_name=>"FatorLotacao"
 has_and_belongs_to_many :series,:class_name=>"Serie",:join_table => "colapso_matrizes"
 has_and_belongs_to_many :disciplinas_contratacao,:class_name=>"DisciplinaContratacao",:join_table => "disciplinas_habilitacoes"
 scope :fun_habilitacao, lambda { |ids| where("disciplinas.id in (?)",ids)}
 has_many :especificacoes,:class_name=>'EspecificarLotacao'
 has_many :funcionarios,:through=>:especificacoes,:uniq=>true
 has_many :turmas,:through=>:especificacoes,:uniq=>true
 has_many :fator_de_lotacoes,:through=>:fatores,:source=>:especificar_lotacao
 has_many :curriculos

 def pode_especificar?(turma)
   valor=0
   fatores = self.fatores.da_serie(turma.serie.id).da_turma(turma.id).all
   curriculo = self.curriculos.da_serie(turma.serie.id).da_disciplina(self.id).da_matriz(turma.matriz.id).first
          if fatores
            fatores.each do |f|
              valor+=f.fator
            end
            fator_sobrando = curriculo.horas_semanal - valor
          else
            fator_sobrando = curriculo.horas_semanal
          end
          if fator_sobrando>=0
            return true
          else
             return false
          end
 end



def fator(turma)
   valor=0
   fatores = self.fatores.da_serie(turma.serie.id).da_turma(turma.id).all
   curriculo = turma.curriculos.da_disciplina(self.id).da_matriz(turma.matriz.id).first
          if fatores
            fatores.each do |f|
              valor+=f.fator
            end
            fator_sobrando = curriculo.horas_semanal - valor
          else
            fator_sobrando = curriculo.horas_semanal
          end
   return fator_sobrando
end

def gerar_fator(turma,fator,serie,curriculo,especificarlotacao)
  f = self.fatores.new
  f.turma_id=turma.id
  f.fator=fator
  f.serie_id=serie.id
  f.curriculo_id=curriculo.id
  f.especificar_lotacao_id=especificarlotacao.id
  return f.save
end

end
