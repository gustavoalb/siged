class Date
feriados, metodos = FeriadoParser.parser("#{Rails.root}/config/feriados")
 if File.directory?("#{Rails.root}/config/feriados")
   f, m = FeriadoParser.parser("#{Rails.root}/config/feriados")
   feriados += f
   metodos += m
 end

 feriados.each { |f| Date::FERIADOS << f }
 metodos.each { |m| Date::FERIADOS_METODOS << m }

end
