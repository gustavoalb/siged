class Periodo < ActiveRecord::Base
  attr_accessible :abertura, :encerramento, :fim, :inicio, :status
end
