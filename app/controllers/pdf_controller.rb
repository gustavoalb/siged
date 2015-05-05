# -*- encoding : utf-8 -*-
class PDFController < Ruport::Controller

stage :header,:body,:footer
 class PDF < Ruport::Formatter::PDF
  renders :pdf, :for => PDFController

    table = Pessoa.order(:nome).report_table(:all,:limit=>100,
      :only       => %w[id nome cpf rg]
      )
      sorted_table = table.sort_rows_by("name", :order => :ascending)

  build :body do
    draw_table(sorted_table)

  end

  build :header do
  pad(10) do
  center_image_in_box "#{Rails.root}/public/images/carta/logo.jpg", :x => 155,
                                      :y => top_boundary - 50,
                                      :width => 275,
                                      :height => 70
  end
  pad(30) do
    add_text "<b>This would be my company header</b>",
             :justification => :center, :font_size => 14

  end
   end

  build :footer do
    add_text "This would be my company footer",
             :justification => :center, :font_size => 14

  end

 end

end

