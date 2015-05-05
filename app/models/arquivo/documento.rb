# -*- encoding : utf-8 -*-
class Arquivo::Documento < ActiveRecord::Base
	include ScopedSearch::Model
      acts_as_taggable
      acts_as_taggable_on :dono,:doc
end

