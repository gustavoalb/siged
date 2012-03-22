module UsuariosHelper

  def roles(u)
  if u.roles.size==1
    return u.roles.first.name.upcase
  elsif u.roles.size>1
    return u.roles.collect{|r|r.name.upcase}.to_sentence
  elsif u.roles.size==0
    return "Sem Papéis definidos"
end
end

end
