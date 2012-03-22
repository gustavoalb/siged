class AlterEscolas < ActiveRecord::Migration
  def self.up
    add_column :escolas,:celular,:string
    add_column :escolas,:numero,:string
    add_column :escolas,:complemento,:string
    add_column :escolas,:bairro,:string
    add_column :escolas,:gt_id,:integer
  end

  def self.down
  remove_column :escolas,:celular
  remove_column :escolas,:numero
  remove_column :escolas,:complemento
  remove_column :escolas,:bairro
  remove_column :escolas,:gt_id  
  end
end
