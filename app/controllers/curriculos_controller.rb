class CurriculosController < ApplicationController
def index
end
def update
@curriculo = Curriculo.find(params[:id])


      if @curriculo.update_attributes(params[:curriculo])
        render :update do |page|
          page.visual_effect :highlight,"campo_#{@curriculo.id}"
          page.replace_html "campo_#{@curriculo.id}", :partial=>"salvo"
         end
      else

      end

end

end
