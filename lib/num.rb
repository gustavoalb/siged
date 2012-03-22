class Num
def numero(id)
    num=id.to_s
      case num.size
        when 1 then cod="0000000#{num}"
        when 2 then cod="000000#{num}"
        when 3 then cod="00000#{num}"
        when 4 then cod="0000#{num}"
        when 5 then cod="000#{num}"
        when 6 then cod="00#{num}"
        when 7 then cod="0#{num}"
      end
    return cod
end

