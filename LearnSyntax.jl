println("I'm excited to learn Julia")
my_answer = 42
my_pi = 3.14159 
my_name = "Kriss"
typeof(my_answer)
typeof(my_pi)
typeof(my_name)
my_answer = my_name
typeof(my_answer)
# А тут я должна оставить комментарий. Ну и базовые мат.операции мне лень
# прописывать, потому что они очевидные
# ----------------
# String
# ----------------
s1 = "I am a string."
s2 = """I am a string."""

# error = "Here, we get an "ERROR: syntax: cannot juxtapose string literal""
noerror = """Look, no "errors"!!!"""
# concatenation 
string("how many cats", " ", 10, " ", "are too many cats?")
s3 = "How many cats"
s4 = "are too many cats"
s3*s4
# ----------------
# Data structures
# ----------------
# Dictionaries
myphonebook = Dict("Jenny" => "867-5309", "Ghostbusters" => "555-2344")
myphonebook["Kramer"] = "555-FILK"
myphonebook
myphonebook["Kramer"]
pop!(myphonebook, "Kramer")
myphonebook[1] #error мы хотим вызвать по индексу, но эта структура не упорядочена. Не можем.
# Tuples
myfavoriteanimals = ("dogs", "cats", "mouses")
myfavoriteanimals[1]
myfavoriteanimals[3] = "rats" #тоже ошибка, т.к. кортежи необновляемые
# Аrrays
myfriends = ["Amy", "Vova", "Anton", "Sasha", "Luise"]
fibonacci = [1, 1, 2, 3, 5, 8, 13]
myfriends[3]
myfriends[3] = "Polina"
myfriends
push!(fibonacci, 21)
pop!(fibonacci)
numbers = [[1, 2, 3], [4, 5], [6, 7, 8, 9]]
rand(4, 3)
rand(4, 3, 2)
# ----------------
# Loops
# ----------------
# While
n = 0
while n < 10
    n+= 1
    println(n)
end
myfriends
i = 1
while i <= length(myfriends)
    friend = myfriends[i]
    println("Hi $friend, it's great to see you!")
    i += 1
end
for n in 1:10 
    println(n)
end
for friend in myfriends
    println("Hi $friend, it's great to see you!")
end
for n = 1:10
    println(n)
end

m, n = 5, 5
A = zeros(m, n)
for i in 1:m
    for j in 1:n
        A[i, j] = i + j
    end
end
A
B = zeros(m, n)
for i in 1:m, j in 1:n
    B[i, j] = i + j
end
B
C = [i + j for i in 1:m, j in 1:n]
for n in 1:10
    A = [i + j for i in 1:n, j in 1:n]
    display(A)
end
# ----------------
# Conditionals
# ----------------
x = 3
y = 90
if x > y 
    println("$x is larger than $y")
elseif y > x
    println("$y is larger than $x")
else
    println("$x and $y are equal!")
end

if x > y
    x
else
    y
end

(x > y) ? x : y

(x > y) && println("$x is larger than $y")
# ----------------
# Functions
# ----------------
function sayhi(name)
    println("Hi, $name")
end
function f(x)
    x^2
end
sayhi("Lobbio")
f(42)
sayhi2(name) = println("Hi, $name")
f2(x) = x*2
# Anonymous
sayhi3 = name -> println("Hi, $name")
f3 = x -> x^2
# Duck-functions
v = rand(3)
f3(v)
# Mutating vs non-Mutating (произведет ли функция изменения в аргументе или нет)
v = [3, 5, 2]
sort(v)