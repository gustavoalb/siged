class UpdateDataConfirmacaoFromLotacaos < ActiveRecord::Migration
  def self.up
  	User.usuario_atual = User.find 1
  	Lotacao.finalizada.each do |l|
  		l.update_attributes(:data_confirmacao=>l.data_lotacao)
  	end
  end

  def self.down
  end
end
