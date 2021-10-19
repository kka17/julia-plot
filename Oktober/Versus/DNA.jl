# Посчитать количество символов в строке

# Принять строку
# Каждый символ строки сравнить с искомыми
# При обнаружении символа НЕ искомого - вернуть ошибку

# function nucleotide_count(chain)
#     a = 0
#     c = 0
#     g = 0
#     t = 0
#     for sym in chain 
#         if sym == "A"
#             a += 1
        
#         elseif sym == "C"
#             c += 1
        
#         elseif sym == "G" 
#             g += 1
       
#         elseif sym == "T"
#             t += 1
#         else 
#             return println("ERROR!")
#         end
#     end
#     return println("A : $a, C : $c, G : $g, T : $t")
# end


s = "GATTACA"

function nucleotide_count(s)
  res = Dict{Char, Int}()
  for c in s
    if haskey(res, c)
        res[c] += 1
    # if c == "A"
    #     res[c] = 1
    # elseif c == "G"
    #     res[c] = 1
    # elseif c == "T"
    #     res[c] = 1
    # elseif c == "C"
    #     res[c] = 1
    else 
        res[c] = 1
    end
   end
   res
end
nucleotide_count(s)

