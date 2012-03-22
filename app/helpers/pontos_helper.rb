module PontosHelper
def datas_especiais(d)

  data = d.to_date
  if data.feriado? and data.strftime("%A")=="Sábado"
    return  raw("<b>FERIADO</b> - <b>SÁBADO</b>")
  elsif data.feriado? and data.strftime("%A")=="Domingo"
    return  raw("<b>FERIADO</b> - <b>DOMINGO</b>")
  elsif data.feriado?
    return  raw("<b>FERIADO</b>")
  elsif data.strftime("%A")=="Sábado"
    return  raw("<b>SÁBADO</b>")
  elsif data.strftime("%A")=="Domingo"
    return raw("<b>DOMINGO</b>")
  end
end





def colorir_data(d)
  data = d.to_date
  if data.feriado? or data.strftime("%A")=="Sábado" or data.strftime("%A")=="Domingo"
    return raw("<TR VALIGN=TOP style='background-color:LightGray;'>")
  else
    return raw("<TR VALIGN=TOP>")
  end
end

end
