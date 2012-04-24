class Ability
  include CanCan::Ability

  def initialize(user)
   user ||= User.new # guest user

   if user.role? :admin
    can :manage, :all

  elsif user.role? :ucada
   can :manage,Funcionario
   cannot :destroy,Funcionario
   can :manage,Pessoa
   cannot :destroy,Pessoa

 elsif user.role? :enquete
   can :read,Pessoa
   cannot :show,Pessoa
   can :read,Orgao
   can :agenda,Orgao
   can :read,Departamento
   can :read,Funcionario
   can :read,Lotacao
   can :manage,Enquete

 elsif user.role? :chefia_cad
   can :read,Pessoa
   can :read,Funcionario
   can :manage,Departamento
   cannot :destroy,Departamento
   can :manage,Ponto
   cannot :destroy,Ponto

 elsif user.role? :chefia_cebep
   can :manage,Pessoa
   cannot :update,Pessoa
   cannot :destroy,Pessoa
   can :manage,Funcionario
   cannot :update,Funcionario
   cannot :destroy,Pessoa
   can :manage,Departamento
   cannot :destroy,Departamento
   can :manage,Ponto
   cannot :destroy,Ponto


 elsif user.role? :gerencia_ude
   can :manage,Funcionario
   cannot :destroy,Funcionario
   can :manage,Pessoa
   cannot :destroy,Pessoa
   can :manage,Lotacao
   cannot :destroy,Lotacao

 elsif user.role? :dcp
   can :manage,Funcionario
   cannot :destroy,Funcionario
   can :manage,Pessoa
   cannot :destroy,Pessoa

 elsif user.role? :chefia_nupes
  can :read,Lotacao
  can :update,Lotacao
  can :convalidar,Lotacao

elsif user.role? :chefia_upag
  can :read,Pessoa
  can :read,Funcionario
  can :manage,Folha
  can :manage,Folha::Folha
  can :manage,Folha::FonteRecurso
  can :manage,Folha::Financeiro
  can :manage,Folha::Competencia
  can :manage,Folha::Evento
  cannot :destroy,Folha::Folha
  cannot :destroy,Folha::FonteRecurso
  cannot :destroy,Folha::Competencia
  cannot :destroy,Folha::Evento
  can :manage,ReferenciaNivel
  cannot :destroy,ReferenciaNivel
  can :manage,Departamento
  cannot :update,Departamento
  cannot :create,Departamento
  cannot :destroy,Departamento
  can :manage,Ponto
  cannot :destroy,Ponto

elsif user.role? :upag
  can :read,Pessoa
  can :read,Funcionario
  can :manage,Folha
  can :manage,Folha::Folha
  can :manage,Folha::FonteRecurso
  can :manage,Folha::Financeiro
  can :manage,Folha::Competencia
  can :manage,Folha::Evento
  cannot :destroy,Folha::Folha
  cannot :destroy,Folha::FonteRecurso
  cannot :destroy,Folha::Competencia
  cannot :destroy,Folha::Evento
  can :manage,ReferenciaNivel
  cannot :destroy,ReferenciaNivel


elsif user.role? :ucolom
 can :manage, Lotacao
 cannot :convalidar,Lotacao
 can :manage,Ponto
 can :manage,Departamento
 cannot :update,Departamento
 cannot :create,Departamento
 cannot :destroy,Departamento
 can :read,Funcionario
 can :manage,Pessoa
 cannot :edit,Pessoa
 cannot :destroy,Pessoa
 can :manage,Funcionario
 cannot :qualificar_funcionario,Pessoa
 cannot :destroy,Funcionario
 cannot :edit,Funcionario

elsif user.role? :conectado
 can :manage, Lotacao
 cannot :convalidar,Lotacao
 can :manage,Ponto
 can :manage,Departamento
 cannot :update,Departamento
 cannot :create,Departamento
 cannot :destroy,Departamento
 can :read,Funcionario
 can :manage,Pessoa
 cannot :edit,Pessoa
 cannot :destroy,Pessoa
 can :manage,Funcionario
 cannot :qualificar_funcionario,Pessoa
 cannot :destroy,Funcionario
 cannot :edit,Funcionario

elsif user.role? :sead
  can :read, :all

elsif user.role? :seed
  can :read, :all

elsif user.role? :crh
  can :read,Pessoa
  can :read,Funcionario
  can :manage,Formacao
  cannot :destroy,Formacao
  can :read,Orgao
  can :agenda,Orgao

elsif user.role? :chefia_crh
  can :read,Pessoa
  can :read,Funcionario
  can :manage,Formacao
  cannot :destroy,Formacao
  can :manage,Departamento
  cannot :update,Departamento
  cannot :create,Departamento
  cannot :destroy,Departamento
  can :manage,Ponto
  cannot :destroy,Ponto
  can :read,Orgao
  can :agenda,Orgao

elsif user.role? :recad
 can :manage,Funcionario
 cannot :destroy,Funcionario
 can :manage,Pessoa
 cannot :destroy,Pessoa
 can :manage,Lotacao

else
  can :read, Pessoa
  can :qualificar,Pessoa
  can :read, Cidade
  can :read, Estado
  can :read, SituacoesJuridica
  can :read, ReferenciaNivel
  can :read, Municipio
  can :read, TipoAmbiente
  can :read, Poder
  can :read, Distrito
  can :read, Diretor
  can :read, Cargo
  can :read, Orgao
  can :read, Municipio
  can :read, SituacoesJuridica
  can :read, Esfera
  #can :read, Escola
  can :read, Quadro
  can :read, Folha
  can :read, Tipo
  can :read, NivelCargo
  can :read, Departamento
  can :read, Serie
end
end
end
