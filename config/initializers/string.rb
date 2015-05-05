# -*- encoding : utf-8 -*-
class String
  def rtrim(char)
    dump.rtrim!(char)
  end

  def rtrim!(char)
    gsub!(/#{Regexp.escape(char)}+$/, '')
  end

  def ltrim(char)
    dump.ltrim!(char)
  end

  def ltrim!(char)
    gsub!(/^#{Regexp.escape(char)}+/, '')
  end

end


class ProperCategoryValidator < ActiveModel::EachValidator


   def validate_each(record, attribute, value)
    total=record.sala.cadastros.size+1
   limite = 1
    unless total>limite
      record.errors.add attribute, 'has bad category.'
    end
  end
end

