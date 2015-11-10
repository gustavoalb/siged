class RemoveCidadeFromPessoa < ActiveRecord::Migration
  def up
    remove_column :pessoas, :cidade
      end

  def down
    add_column :pessoas, :cidade, :string
  end
end
