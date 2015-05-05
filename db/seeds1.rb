# -*- encoding : utf-8 -*-
#Adiciona as Anoes
Serie.delete_all
serie1 = Serie.create(:nome=>"1ª Ano",:codigo=>"1S")
serie2 = Serie.create(:nome=>"2ª Ano",:codigo=>"2S")
serie3 = Serie.create(:nome=>"3ª Ano",:codigo=>"3S")
serie4 = Serie.create(:nome=>"4ª Ano",:codigo=>"4S")
serie5 = Serie.create(:nome=>"5ª Ano",:codigo=>"5S")
serie6 = Serie.create(:nome=>"6ª Ano",:codigo=>"6S")
serie7 = Serie.create(:nome=>"7ª Ano",:codigo=>"7S")
serie8 = Serie.create(:nome=>"8ª Ano",:codigo=>"8S")
serie9 = Serie.create(:nome=>"9ª Ano",:codigo=>"9S")

Disciplina.delete_all
#Adiciona as Disciplinas
disciplina1 = Disciplina.create(:nome=>  "Lingua Portuguesa",:codigo=>'LP')
disciplina2 = Disciplina.create(:nome=>  "Lingua Portuguesa e Literatura",:codigo=>'LPLT')
disciplina3 = Disciplina.create(:nome=>  "Arte",:codigo=>'ART')
disciplina4 = Disciplina.create(:nome=>  "Educação Física",:codigo=>'EFIS')
disciplina5 = Disciplina.create(:nome=>  "Matemática",:codigo=>'MAT')
disciplina6 = Disciplina.create(:nome=>  "Ciências",:codigo=>'CIE')
disciplina7 = Disciplina.create(:nome=>  "História",:codigo=>'HIS')
disciplina8 = Disciplina.create(:nome=>  "Geografia",:codigo=>'GEO')
disciplina9 = Disciplina.create(:nome=>  "Ensino Religioso",:codigo=>'ENREL')
disciplina10 = Disciplina.create(:nome=>  "Física",:codigo=>'FIS')
disciplina11 = Disciplina.create(:nome=>  "Química",:codigo=>'QUI')
disciplina12 = Disciplina.create(:nome=>  "Biologia",:codigo=>'BIO')
disciplina13 = Disciplina.create(:nome=>  "Filosofia",:codigo=>'FIL')
disciplina14 = Disciplina.create(:nome=>  "Sociologia",:codigo=>'SOC')
disciplina15 = Disciplina.create(:nome=>  "Língua Estrangeira - Espanhol",:codigo=>'ESP')
disciplina16 = Disciplina.create(:nome=>  "Língua Estrangeira",:codigo=>'LEST')
disciplina17 = Disciplina.create(:nome=>  "Estudos Amapaenses e Amazônicos",:codigo=>'EAPAMZ')

Matriz.delete_all
#Cria uma Matriz Padrão
matriz = Matriz.create(:codigo=>"EF901",:nivel=>"Ensino Fundamental de Nove Anos",:modalidade=>"Regular",:dias_letivos_anuais=>200)

Curriculo.delete_all
#Cria os Curriculos padrões da Matriz
	curriculo1=matriz.curriculos.create(:disciplina_id=>disciplina1.id,:serie_id=>serie6.id, :classe=>"BASE NACIONAL COMUN", :area=>"LINGUAGENS CÓDIGOS E SUAS TECNOLOGIAS",:horas_semanal=>4)
	curriculo2=matriz.curriculos.create(:disciplina_id=>disciplina1.id,:serie_id=>serie7.id, :classe=>"BASE NACIONAL COMUN", :area=>"LINGUAGENS CÓDIGOS E SUAS TECNOLOGIAS",:horas_semanal=>4)
	curriculo3=matriz.curriculos.create(:disciplina_id=>disciplina1.id,:serie_id=>serie8.id, :classe=>"BASE NACIONAL COMUN", :area=>"LINGUAGENS CÓDIGOS E SUAS TECNOLOGIAS",:horas_semanal=>5)
	curriculo4=matriz.curriculos.create(:disciplina_id=>disciplina1.id,:serie_id=>serie9.id, :classe=>"BASE NACIONAL COMUN", :area=>"LINGUAGENS CÓDIGOS E SUAS TECNOLOGIAS",:horas_semanal=>5)	


        curriculo2=matriz.curriculos.create(:disciplina_id=>disciplina3.id,:serie_id=>serie6.id, :classe=>"BASE NACIONAL COMUN", :area=>"LINGUAGENS CÓDIGOS E SUAS TECNOLOGIAS",:horas_semanal=>2)
        curriculo2=matriz.curriculos.create(:disciplina_id=>disciplina3.id,:serie_id=>serie7.id, :classe=>"BASE NACIONAL COMUN", :area=>"LINGUAGENS CÓDIGOS E SUAS TECNOLOGIAS",:horas_semanal=>2)
        curriculo2=matriz.curriculos.create(:disciplina_id=>disciplina3.id,:serie_id=>serie8.id, :classe=>"BASE NACIONAL COMUN", :area=>"LINGUAGENS CÓDIGOS E SUAS TECNOLOGIAS",:horas_semanal=>2)
        curriculo2=matriz.curriculos.create(:disciplina_id=>disciplina3.id,:serie_id=>serie9.id, :classe=>"BASE NACIONAL COMUN", :area=>"LINGUAGENS CÓDIGOS E SUAS TECNOLOGIAS",:horas_semanal=>2)


        curriculo2=matriz.curriculos.create(:disciplina_id=>disciplina4.id,:serie_id=>serie6.id, :classe=>"BASE NACIONAL COMUN", :area=>"LINGUAGENS CÓDIGOS E SUAS TECNOLOGIAS",:horas_semanal=>2)
        curriculo2=matriz.curriculos.create(:disciplina_id=>disciplina4.id,:serie_id=>serie7.id, :classe=>"BASE NACIONAL COMUN", :area=>"LINGUAGENS CÓDIGOS E SUAS TECNOLOGIAS",:horas_semanal=>2)
        curriculo2=matriz.curriculos.create(:disciplina_id=>disciplina4.id,:serie_id=>serie8.id, :classe=>"BASE NACIONAL COMUN", :area=>"LINGUAGENS CÓDIGOS E SUAS TECNOLOGIAS",:horas_semanal=>2)
        curriculo2=matriz.curriculos.create(:disciplina_id=>disciplina4.id,:serie_id=>serie9.id, :classe=>"BASE NACIONAL COMUN", :area=>"LINGUAGENS CÓDIGOS E SUAS TECNOLOGIAS",:horas_semanal=>2)

        curriculo2=matriz.curriculos.create(:disciplina_id=>disciplina5.id,:serie_id=>serie6.id, :classe=>"BASE NACIONAL COMUN", :area=>"CIÊNCIA NATURAIS E SUAS TECNOLOGIAS",:horas_semanal=>4)
        curriculo2=matriz.curriculos.create(:disciplina_id=>disciplina5.id,:serie_id=>serie7.id, :classe=>"BASE NACIONAL COMUN", :area=>"CIÊNCIA NATURAIS E SUAS TECNOLOGIAS",:horas_semanal=>4)
        curriculo2=matriz.curriculos.create(:disciplina_id=>disciplina5.id,:serie_id=>serie8.id, :classe=>"BASE NACIONAL COMUN", :area=>"CIÊNCIA NATURAIS E SUAS TECNOLOGIAS",:horas_semanal=>4)
        curriculo2=matriz.curriculos.create(:disciplina_id=>disciplina5.id,:serie_id=>serie9.id, :classe=>"BASE NACIONAL COMUN", :area=>"CIÊNCIA NATURAIS E SUAS TECNOLOGIAS",:horas_semanal=>4)

        curriculo2=matriz.curriculos.create(:disciplina_id=>disciplina6.id,:serie_id=>serie6.id, :classe=>"BASE NACIONAL COMUN", :area=>"CIÊNCIA NATURAIS E SUAS TECNOLOGIAS",:horas_semanal=>3)
        curriculo2=matriz.curriculos.create(:disciplina_id=>disciplina6.id,:serie_id=>serie7.id, :classe=>"BASE NACIONAL COMUN", :area=>"CIÊNCIA NATURAIS E SUAS TECNOLOGIAS",:horas_semanal=>3)
        curriculo2=matriz.curriculos.create(:disciplina_id=>disciplina6.id,:serie_id=>serie8.id, :classe=>"BASE NACIONAL COMUN", :area=>"CIÊNCIA NATURAIS E SUAS TECNOLOGIAS",:horas_semanal=>3)
        curriculo2=matriz.curriculos.create(:disciplina_id=>disciplina6.id,:serie_id=>serie9.id, :classe=>"BASE NACIONAL COMUN", :area=>"CIÊNCIA NATURAIS E SUAS TECNOLOGIAS",:horas_semanal=>3)


        curriculo2=matriz.curriculos.create(:disciplina_id=>disciplina7.id,:serie_id=>serie6.id, :classe=>"BASE NACIONAL COMUN", :area=>"CIÊNCIA HUMANAS E SUAS TECNOLOGIAS",:horas_semanal=>3)
        curriculo2=matriz.curriculos.create(:disciplina_id=>disciplina7.id,:serie_id=>serie7.id, :classe=>"BASE NACIONAL COMUN", :area=>"CIÊNCIA HUMANAS E SUAS TECNOLOGIAS",:horas_semanal=>3)
        curriculo2=matriz.curriculos.create(:disciplina_id=>disciplina7.id,:serie_id=>serie8.id, :classe=>"BASE NACIONAL COMUN", :area=>"CIÊNCIA HUMANAS E SUAS TECNOLOGIAS",:horas_semanal=>3)
        curriculo2=matriz.curriculos.create(:disciplina_id=>disciplina7.id,:serie_id=>serie9.id, :classe=>"BASE NACIONAL COMUN", :area=>"CIÊNCIA HUMANAS E SUAS TECNOLOGIAS",:horas_semanal=>3)


        curriculo2=matriz.curriculos.create(:disciplina_id=>disciplina8.id,:serie_id=>serie6.id, :classe=>"BASE NACIONAL COMUN", :area=>"CIÊNCIA HUMANAS E SUAS TECNOLOGIAS",:horas_semanal=>3)
        curriculo2=matriz.curriculos.create(:disciplina_id=>disciplina8.id,:serie_id=>serie7.id, :classe=>"BASE NACIONAL COMUN", :area=>"CIÊNCIA HUMANAS E SUAS TECNOLOGIAS",:horas_semanal=>3)
        curriculo2=matriz.curriculos.create(:disciplina_id=>disciplina8.id,:serie_id=>serie8.id, :classe=>"BASE NACIONAL COMUN", :area=>"CIÊNCIA HUMANAS E SUAS TECNOLOGIAS",:horas_semanal=>3)
        curriculo2=matriz.curriculos.create(:disciplina_id=>disciplina8.id,:serie_id=>serie9.id, :classe=>"BASE NACIONAL COMUN", :area=>"CIÊNCIA HUMANAS E SUAS TECNOLOGIAS",:horas_semanal=>3)

        curriculo2=matriz.curriculos.create(:disciplina_id=>disciplina9.id,:serie_id=>serie6.id, :classe=>"BASE NACIONAL COMUN", :area=>"CIÊNCIA HUMANAS E SUAS TECNOLOGIAS",:horas_semanal=>1)
        curriculo2=matriz.curriculos.create(:disciplina_id=>disciplina9.id,:serie_id=>serie7.id, :classe=>"BASE NACIONAL COMUN", :area=>"CIÊNCIA HUMANAS E SUAS TECNOLOGIAS",:horas_semanal=>1)


        curriculo2=matriz.curriculos.create(:disciplina_id=>disciplina16.id,:serie_id=>serie6.id, :classe=>"PARTE DIVERSIFICADA", :area=>"",:horas_semanal=>2)
        curriculo2=matriz.curriculos.create(:disciplina_id=>disciplina16.id,:serie_id=>serie7.id, :classe=>"PARTE DIVERSIFICADA", :area=>"",:horas_semanal=>2)
        curriculo2=matriz.curriculos.create(:disciplina_id=>disciplina16.id,:serie_id=>serie8.id, :classe=>"PARTE DIVERSIFICADA", :area=>"",:horas_semanal=>2)
        curriculo2=matriz.curriculos.create(:disciplina_id=>disciplina16.id,:serie_id=>serie9.id, :classe=>"PARTE DIVERSIFICADA", :area=>"",:horas_semanal=>2)


        curriculo2=matriz.curriculos.create(:disciplina_id=>disciplina17.id,:serie_id=>serie6.id, :classe=>"PARTE DIVERSIFICADA", :area=>"",:horas_semanal=>1)
        curriculo2=matriz.curriculos.create(:disciplina_id=>disciplina17.id,:serie_id=>serie7.id, :classe=>"PARTE DIVERSIFICADA", :area=>"",:horas_semanal=>1)
        curriculo2=matriz.curriculos.create(:disciplina_id=>disciplina17.id,:serie_id=>serie8.id, :classe=>"PARTE DIVERSIFICADA", :area=>"",:horas_semanal=>1)
        curriculo2=matriz.curriculos.create(:disciplina_id=>disciplina17.id,:serie_id=>serie9.id, :classe=>"PARTE DIVERSIFICADA", :area=>"",:horas_semanal=>1)
#Criação do Ambiente Educacional padrão
        TipoAmbiente.delete_all
	tpambiente = TipoAmbiente.create(:nome=>"AMBIENTE EDUCACIONAL", :tipo_especificacao=>"H")

         Setting.delete_all
         Ambiente.delete_all
         Turma.delete_all
	 Escola.all.each do |e|
	  cmatriz = e.settings.create(:objeto_id=>matriz.id, :tipo_config=>"MATRIZ", :data=>Time.now, :ativo=>true, :temporaridade=>1, :tipo_temporaridade=>"ANO", :finalizado=>false)
	  aano = e.settings.create(:tipo_config=>"ANOLETIVO", :data=>Time.now, :ativo=>true, :temporaridade=>1, :tipo_temporaridade=>"ANO", :finalizado=>false)
	  alied = e.settings.create(:tipo_config=>"LIED", :data=>Time.now, :ativo=>true, :temporaridade=>1, :tipo_temporaridade=>"ANO", :finalizado=>false)
	  eambiente = e.ambientes.create(:nome=>"AMBIENTE EDUCACIONAL",:tipo_ambiente_id=>tpambiente.id, :ativo=>true, :descricao=>"Sala 001",:setting_id=>aano.id,:ano_letivo=>aano)
	  turma = eambiente.turmas.create(:matriz_id=>matriz.id, :serie_id=>serie6.id, :turno=>'Manhã', :escola_id=>e.id)
          turma = eambiente.turmas.create(:matriz_id=>matriz.id, :serie_id=>serie7.id, :turno=>'Manhã', :escola_id=>e.id)
	  turma = eambiente.turmas.create(:matriz_id=>matriz.id, :serie_id=>serie8.id, :turno=>'Manhã', :escola_id=>e.id)
	  turma = eambiente.turmas.create(:matriz_id=>matriz.id, :serie_id=>serie9.id, :turno=>'Manhã', :escola_id=>e.id)
	 end 




