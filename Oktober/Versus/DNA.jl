# Посчитать количество символов в строке

# Принять строку
# Каждый символ строки сравнить с искомыми
# При обнаружении символа НЕ искомого - вернуть ошибку

function nucleotide_count(chain)
    a = 0
    c = 0
    g = 0
    t = 0
    for sym in chain 
        if sym == 'A'
          a += 1
        elseif sym == 'C'
          c += 1
        elseif sym == 'G' 
          g += 1
        elseif sym == 'T'
          t += 1
        else 
          error()
        end
    end
    return Dict('A'=>a,'C'=>c,'G'=>g,'T'=>t)
end

nucleotide_count("chain")
nucleotide_count("GATTACA")
nucleotide_count("1213456")





