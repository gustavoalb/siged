class CreateFinanceiroFixos < ActiveRecord::Migration
  def self.up
    create_table :financeiro_fixos do |t|
      t.integer :competencia_id
      t.integer :mes
      t.integer :ano
      t.integer :evento_id
      t.float :valor
      t.integer :funcionario_id
      t.integer :prazo
      t.integer :parametro
      t.integer :tipo_parametro_id

      t.timestamps
    end
  end

  def self.down
    drop_table :financeiro_fixos
  end
end
