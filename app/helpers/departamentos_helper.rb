# -*- encoding : utf-8 -*-
module DepartamentosHelper

def pai(obj)
   if obj
     if obj.departamento_pai 
      return obj.departamento_pai.sigla
     else 
       return "#{obj.orgao.sigla}"  
     end
    end
    end
end


