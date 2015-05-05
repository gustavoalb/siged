# -*- encoding : utf-8 -*-
class Administracao::Migracao < ActiveRecord::Base
	has_attached_file :arquivo,:url => '/arquivos/migracao/:id/:filename'


	def migrar_arquivo
        file = File.open(self.arquivo.path,'r')
        linhas = file.readlines
        header = linhas.first.gsub("\r","").gsub("\n","")
        footer = linhas.last.gsub("\r","").gsub("\n","")
        puts header

        if header[0,2]=="FF" or header[0,2]=="PP"
        	header_tipo=true
        	tipo=header[0,2]
        else
        	header_tipo=false
          return puts "Erro"
        end

        if header[2,5].to_i.is_a?Fixnum
        	header_entidade=true
        	entidade=header[2,5]
        else
        	header_entidade=false
        end

        if header[7,5].to_i.is_a?Fixnum
        	header_quantidade=true
        	quantidade=header[7,5]
        else
        	header_quantidade=false
        end

        if header[12,7].to_i.is_a?Fixnum
        	header_contador=true
        	contador=header[12,7].to_i
        else
        	header_contador=false
        end

       if footer[0,40].to_s.is_a?String
        	footer_origem=true
        	origem = footer[0,40]
        else
        	footer_origem=false
        end

        if footer[40,23].to_s.is_a?String
        	footer_motivo=true
        	motivo = footer[40,23]
        else
        	footer_motivo=false
        end

        if footer[63,3].to_s.is_a?String
        	footer_end=true
        else
        	footer_end=false 
        end

		if header_tipo and header_entidade and header_quantidade and header_contador and footer_origem and footer_motivo and footer_end
           linhas.each do |l|
           	   puts l[0,1]
           	   puts l.size
           	if l[0,1]=="D" and l.size==47
           		#processar o arquivo
           		ultimo = Administracao::Migracao.last

           		if ultimo.contador < contador and ultimo.contador+1==contador
           			contador_ok=true 
           		else
           			contador_ok=false
           		end

           		if contador_ok and tipo=="FF"
           		  cpf = l[1,11]
           		  puts cpf
           		  puts l
           		  amatricula=l[12,1]
           		  puts amatricula
           		  matricula=l[13,7]
           		  acargo=l[20,1]
           		  cargo=l[22,5]
           		  anivel = l[26,1]
           		  nivel=l[27,5]
           		  adisciplina=l[32,1]
           		  disciplina=l[33,7]
           		  ahoras = l[40,1]
           		  horas=l[41,2]
           		  asjuridica=l[43,1]
           		  sjuridica=l[44,2]
           		  #abanco=[45,1]
           		  #banco=[46,3]
           		  #aagencia=[49,1]
           		  #agencia=[50,8]
           		  #aconta=[58,1]
           		  #conta=[59,5]
           		  pessoa = Pessoa.find_by_cpf(cpf)
           		  	if pessoa
           		  		if amatricula=="M"
           		  			if matricula[0,1]=="0"
           		  				mat=matricula[1,6]
           		  			else
           		  				mat=matricula
           		  		    end
           		  		    puts mat
           		  			funcionario=pessoa.funcionarios.find_by_matricula(mat)
           		  			puts pessoa.nome
           		  			puts "Situacao Juridica: #{funcionario.sjuridica_id}"
           		  			if funcionario
	           		  			if acargo=="A"
	           		  		     cargo_d = Cargo.find_by_codigo(cargo)
	                             funcionario.cargo_id=cargo_d.id
	                            end
	                            if anivel=="A"
	                              ref = ReferenciaNivel.find_by_codigo(nivel)
	                              funcionario.nivel_id=ref.id 
	                            end 

	                            if adisciplina=="A"
	                               disc = DescricaoCargo.find_by_codigo(disciplina)
	                               funcionario.descricao_cargo.id=disc.id
	                            end
	                            if asjuridica=="A"
	                            	sjur = SituacoesJuridica.find_by_sigla(sjuridica)
	                            	funcionario.sjuridica_id = sjur.id 
	                            end
                                 funcionario.save
                                 puts "Situacao Juridica: #{funcionario.sjuridica_id}"
	                        end
           		  		else
           		  			#Adicionar Funcionário
           		  		end
           		  	end

           		end
            end
         end
          file.close
   		 end
	end
end


