mystringexample1 = "Hello, world"
println(mystringexample1)
function spin(str)
    y = str[end:-1:1]
end
greeting = "Hello, whatsyournameagain?"
function spin(str,k)
    init = str[1:k]
    finish = str[end-k+1:end]
    mid = str[k+1:end-k]
    y = join([init, spin(mid), finish])
    return y
end

