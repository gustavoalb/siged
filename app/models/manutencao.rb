# -*- encoding : utf-8 -*-
require 'rubygems'
require 'rufus/scheduler'
class Manutencao < ActiveRecord::Base



  def colocar_em_manutencao
    tempo = "#{self.tempo}#{self.tipo}"
    scheduler = Rufus::Scheduler.start_new

      scheduler.in tempo do
        self.em_manutencao=false
        self.save
      end
  end
end

