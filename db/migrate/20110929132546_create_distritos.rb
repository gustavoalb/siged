class CreateDistritos < ActiveRecord::Migration
  def self.up
    create_table :distritos do |t|
      t.integer :municipio_id
      t.string :nome
      t.string :codigo

      t.timestamps
    end
  end

  def self.down
    drop_table :distritos
  end
end
