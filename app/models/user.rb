class User < ActiveRecord::Base
  set_table_name :users
  has_one :entidade_user
  has_and_belongs_to_many :roles,:join_table=>:roles_users
  has_and_belongs_to_many :entidades,:join_table=>:users_entidades
  belongs_to :orgao
  belongs_to :departamento
  belongs_to :entidade


  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  cattr_accessor :current
  #cattr_accessor :entidades_do
  cattr_accessor :ultimo_ip
  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,:name,:username,:role_ids,:entidade_ids,:orgao_id,:departamento_id

  def role?(role)
    papel=[]
    self.roles.each do |r|
      papel << r.name.downcase
    end
    papel.include? role.to_s.downcase
  end

def self.atual
  return self.id
end

def self.usuario_atual
  Thread.current[:user]
end

def self.usuario_atual=(user)
  Thread.current[:user] = user
end

end
