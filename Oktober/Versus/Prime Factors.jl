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
# Мне нужно делить число до тех пор, пока is_prime_num возвращает 0, т.е. число не простой множитель
function div(n)
    # init = n
    cur = n
    while is_prime_num(cur) < 1
        cur = n/2
        println(cur)
    end
end
div(20)

# function prime_factor(num::Int)
#     init = num
#     pf = []
#     cur = 0

#     if mod(num, 2) == 0
#         return num = num/2
#     elseif mod(num, 3) == 0
#         return num = num/3
#     else return init
#     end
# end