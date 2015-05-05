# -*- encoding : utf-8 -*-
class CreateMunicipios < ActiveRecord::Migration
  def self.up
    create_table :municipios do |t|
      t.string :nome
      t.string :cep
      t.string :sigla

      t.timestamps
    end

  add_index :municipios,:nome
  add_index :municipios,:cep
  add_index :municipios,:sigla
  Municipio.create(:nome => 'Amapá', :cep => '68950000', :sigla => "")
	Municipio.create(:nome => 'Calçoene', :cep => '68960000', :sigla => "")
	Municipio.create(:nome => 'Ferreira Gomes', :cep => '68915000', :sigla => "")
  Municipio.create(:nome => 'Laranjal Do Jari', :cep => '68920000', :sigla => "")
	Municipio.create(:nome => 'Macapá', :cep => '68900000', :sigla => "")
	Municipio.create(:nome => 'Mazagão', :cep => '68940000', :sigla => "")
	Municipio.create(:nome => 'Oiapoque', :cep => '68980000', :sigla => "")
	Municipio.create(:nome => 'Porto Grande', :cep => '68997000', :sigla => "")
	Municipio.create(:nome => 'Serra Do Navio', :cep => '68914000', :sigla => "")
	Municipio.create(:nome => 'Santana', :cep => '68925000', :sigla => "")
	Municipio.create(:nome => 'Tartarugalzinho', :cep => '68990000', :sigla => "")
	Municipio.create(:nome => 'Pracuúba', :cep => '68918000', :sigla => "")
	Municipio.create(:nome => 'Itaubal', :cep => '68976000', :sigla => "")
	Municipio.create(:nome => 'Cutias', :cep => '68973000', :sigla => "")
	Municipio.create(:nome => 'Pedra Branca do Amapari', :cep => '68912450', :sigla => "")
	Municipio.create(:nome => 'Vitória Do Jari', :cep => '68924000', :sigla => "")
  end

  def self.down
    drop_table :municipios
  end
end


