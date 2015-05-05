# -*- encoding : utf-8 -*-
module Arel
  module Nodes
    class SqlLiteral < String
      include Arel::Expressions
      include Arel::Predications
    end
  end
end

