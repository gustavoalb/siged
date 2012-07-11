class Turma < ActiveRecord::Base


validates_uniqueness_of :nome,:scope=>[:ambiente_id,:matriz_id,:ano_letivo_id,:serie_id,:turno,:escola_id],:message=>"já cadastrada"
TURNO=[
["Manha","Manhã"],
["Tarde","Tarde"],
["Noite","Noite"]
]
has_many :curriculos,:through=>:serie,:conditions=>["curriculos.serie_id = series.id"],:uniq=>true
has_many :especificacoes,:class_name=>"EspecificarLotacao"
belongs_to :matriz
belongs_to :ambiente
belongs_to :serie
belongs_to :escola
belongs_to :entidade
belongs_to :ano_letivo


scope :da_escola,lambda{|esc| where("turmas.escola_id = ?",esc)}
end
