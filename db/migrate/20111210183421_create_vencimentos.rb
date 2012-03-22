class CreateVencimentos < ActiveRecord::Migration
  def self.up
    create_table :vencimentos do |t|
      t.integer :referencia_nivel_id,:null => false
      t.integer :ano,:limit=>4,:null => false
      t.integer :mes,:limit=>2,:null => false
      t.float :valor,:null => false
      t.boolean :atual,:default=>true,:null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :vencimentos
  end
end
