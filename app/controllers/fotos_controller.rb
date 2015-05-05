# -*- encoding : utf-8 -*-
class FotosController < ApplicationController
skip_before_filter :verify_authenticity_token, :except => [:create]

def new
 $pessoa = Pessoa.find(params[:pessoa_id])
 @fotos = $pessoa.fotos.all
end
  def show
    @foto = Foto.find(params[:id])
  end

  def index
    @fotos = Foto.all
  end

 def upload
  cpf = Cpf.new($pessoa.cpf)
  file_name = "#{cpf.numero.parameterize}.jpg"
  pasta = File.join(Rails.root.to_s, 'public', 'fotos')
#  Dir.mkdir(pasta)

   if File.exist?(pasta)
      arquivo = File.join(pasta, file_name)
    elsif  !File.exist?(pasta)
       Dir.mkdir(pasta)
       arquivo = File.join(pasta, file_name)
   end

    File.open(arquivo, 'w') do |file|
      file.write_nonblock  request.raw_post
      file.close
    end



    @foto = $pessoa.fotos.new
    @foto.imagem = File.new(arquivo)
    @foto.save
    render :update do |page|
          page.visual_effect :highlight,"fotos"
          page.replace_html "fotos", :partial=>"foto"
         end


end


  private


def upload_path # is used in upload and create

end
end

