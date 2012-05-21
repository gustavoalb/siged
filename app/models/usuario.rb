class Usuario < User
  include ScopedSearch::Model
  	scope :busca,lambda { |q| includes(:orgao,:departamento).where("username ilike ? or name ilike ? or orgaos.sigla ilike ? or departamentos.sigla ilike ? or email iLIKE ?" ,"%#{q.downcase}%","%#{q}%","%#{q.downcase}%","%#{q.downcase}%","%#{q.downcase}%") }
end
