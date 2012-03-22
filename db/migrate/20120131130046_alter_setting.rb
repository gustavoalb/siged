class AlterSetting < ActiveRecord::Migration
  def self.up
  	rename_column :settings,:temporaridade,:temporalidade
  	rename_column :settings,:tipo_temporaridade,:tipo_temporalidade
  	add_column :settings, :ano_letivo_id, :integer
  end

  def self.down
  end
end
