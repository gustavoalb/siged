class CreateEstados < ActiveRecord::Migration
  def self.up
    create_table :estados do |t|
      t.string :nome
      t.string :sigla

      t.timestamps
    end
    add_index :estados, [:nome]
    add_index :estados, [:sigla]

    estados = {
	  "acre" => "ac",
	  "alagoas" => "al",
	  "amapa" => "ap",
	  "amazonas" => "am",
	  "bahia" => "ba",
	  "ceara" => "ce",
	  "distrito federal" => "df",
	  "espirito santo" => "es",
	  "goias" => "go",
	  "maranhao" => "ma",
	  "mato grosso" => "mt",
	  "mato grosso do sul" => "ms",
	  "minas gerais" => "mg",
	  "para" => "pa",
	  "paraiba" => "pb",
	  "parana" => "pr",
	  "pernambuco" => "pe",
	  "piaui" => "pi",
	  "rio grande do sul" => "rs",
	  "rio de janeiro" => "rj",
	  "rondonia" => "ro",
	  "roraima" => "rr",
	  "rio grande do norte" => "rn",
	  "santa catarina" => "sc",
	  "sao paulo" => "sp",
	  "sergipe" => "se",
	  "tocantins" => "to",
	}

	estados.sort.each do |nome, sigla|
	  Estado.create(:nome=>nome.nome_proprio, :sigla=>sigla.upcase)
	end
  end

  def self.down
    drop_table :estados
  end
end

