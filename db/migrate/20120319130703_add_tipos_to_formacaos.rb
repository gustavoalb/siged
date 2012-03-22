class AddTiposToFormacaos < ActiveRecord::Migration
	def self.up
		User.usuario_atual = User.find 1
		add_column :niveis,:ordem,:integer,:default=>0
		Nivel.delete_all
		n1 = Nivel.create(:nome=>'Doutorado',:ordem=>'1')
		n2 = Nivel.create(:nome=>'Mestrado',:ordem=>'2')
		n3 = Nivel.create(:nome=>'Mestrado Profissionalizante',:ordem=>'3')
		n4 = Nivel.create(:nome=>'Especialização',:ordem=>'4')
		n5 = Nivel.create(:nome=>'Especialização - Residência Médica',:ordem=>'5')
		n6 = Nivel.create(:nome=>'MBA',:ordem=>'6')
		n7 = Nivel.create(:nome=>'Graduação',:ordem=>'7')
		n8 = Nivel.create(:nome=>'Extensão',:ordem=>'8')
		n9 = Nivel.create(:nome=>'Aperfeiçoamento',:ordem=>'9')
		n10 = Nivel.create(:nome=>'De curta duração',:ordem=>'10')
		n11 = Nivel.create(:nome=>'Esnsino Profissionalizante de Nível Técnico',:ordem=>'11')
		n12 = Nivel.create(:nome=>'Ensino Médio',:ordem=>'12')
		n13 = Nivel.create(:nome=>'Ensino Fundamental',:ordem=>'13')
		n1.titulos.create(:nome=>'Doutor (a)')
		n2.titulos.create(:nome=>'Mestre (a)')
		n3.titulos.create(:nome=>'Mestre (a)')
		n4.titulos.create(:nome=>'Especialista')
		n5.titulos.create(:nome=>'Especialista')
		n6.titulos.create(:nome=>'Pós-graduado (a)')
		n7.titulos.create(:nome=>'Bacharel (a)')
		n7.titulos.create(:nome=>'Licenciado (a)')
		n7.titulos.create(:nome=>'Tecnólogo (a)')	
		n11.titulos.create(:nome=>'Técnico (a)')
		n1.subtipos.create(:nome=>'Normal')
		n1.subtipos.create(:nome=>'Sanduíche')
		n1.subtipos.create(:nome=>'Co-tutela')
	end

	def self.down
		remove_column :niveis,:ordem
		n1.destroy 
		n2.destroy 
		n3.destroy 
		n4.destroy 
		n5.destroy 
		n6.destroy 
		n7.destroy 
		n8.destroy 
		n9.destroy 
		n10.destroy
		n11.destroy
		n12.destroy
		n13.destroy

	end
end
