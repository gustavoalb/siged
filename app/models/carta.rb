# -*- encoding : utf-8 -*-
class Carta < ActiveRecord::Base
  set_table_name :carta
  #has_attached_file :carta, :styles { :thumb => "100×200#",:mini=>"17x17#" }
end

