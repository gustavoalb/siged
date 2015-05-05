# -*- encoding : utf-8 -*-
module Arel
  module Nodes
    class Exists < Arel::Nodes::Function
      alias :select_stmt :expressions
    end
  end
end

