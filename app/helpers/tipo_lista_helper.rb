# -*- encoding : utf-8 -*-
module TipoListaHelper
def num_funcionarios(obj)
    n=0
      obj.pessoas.each do |p|
        p.funcionarios.each do |f|
        n+=1
      end
    end
    return n
    end
end

