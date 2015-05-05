# -*- encoding : utf-8 -*-
class AddAmbienteIdToEspecificarLotacaos < ActiveRecord::Migration
  def self.up
    add_column :especificar_lotacaos, :ambiente_id, :integer
  end

  def self.down
    remove_column :especificar_lotacaos, :ambiente_id
  end
end

