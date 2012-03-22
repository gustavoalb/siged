class Vencimento < ActiveRecord::Base
  default_scope where('entidade_id in (?)',User.usuario_atual.entidade_ids)
  belongs_to :referencia_nivel
  belongs_to :entidade

  scope :do_nivel, lambda {|id|where("referencia_nivel_id = ?",id) }

  after_create :atualizar_vencimento
  private
  def atualizar_vencimento
    #busca todos os vencimentos, exceto o que está sendo criado
    vencimentos = Vencimento.do_nivel(self.referencia_nivel_id).find :all,:conditions=>["id<>?",self.id]
    #Torna o Vencimento Criado padrão
    Vencimento.transaction do
     vencimentos.each do |v|
       if v.atual == true
        v.atual=false
        v.save
      end
    end
    raise ActiveRecord::Rollback
  end
end
end
