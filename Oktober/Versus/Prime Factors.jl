using Test
function is_prime_num(num::Int)
    prime_num = [2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97]
    for i in prime_num
        if num == i 
            return 1
        end
    end
    return 0
end

function div(num::Int)
    prime_factor = []
    prime_num = [2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97]
    for i in prime_num
        if mod(num, i) == 0
            return convert(Int64, num/i)
            push!(prime_factor, i)
        end
    end
    return 0
end


n=52
while n > 1
    n = div(n)
    println(n)
end
prime_factor
# function prime_factor(num)
#     if 
# is_prime_num(26)
# convert(Int64, div(26))
# is_prime_num(13)