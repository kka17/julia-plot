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
<<<<<<< HEAD
sort!(v)
v
# ----------------
# Broadcasting
# ----------------
A = [i + 3*j for j in 0:2, i in 1:3]
f(A)
B = f.(A)
A = [2, 2]
A = [2, 2]^2
B = [2, 2]
v = [1, 2, 3]
f.(v)
# ----------------
# Pkg
# ----------------
using Example
hello("Cat")
palette = distinguishable_colors(100)
using Colors
palette = distinguishable_colors(100)
rand(palette, 3, 3)
# ----------------
# Plotting
# ----------------
using Plots
x = -3:0.1:3
f(x) = x^2
y = f.(x)
gr()
plot(x, y, label = "line")
scatter!(x, y, label = "points")
plotlyjs()
plot(x, y, label = "line")
scatter!(x, y, label = "points")
# Вопросы для Амины: 
# 1. Для чего мы после функции ставим восклицательный знак? Объясни отличия mutating and non-mutating functions
# 2. Что такое броадкастинг?
# 3. Что делает функция ранд (rand) и ее синтаксис? 
globaltemperatures = [14.4, 14.5, 14.8, 15.2, 15.5, 15.8]
numpirates = [45000, 20000, 15000, 5000, 400, 17]
using Plots
p1 = plot(x, x)
p2 = plot(x, x.^2)
p3 = plot(x, x.^3)
p4 = plot(x, x.^4)
plot(p1, p2, p3, p4, layout = (2, 2), legend = false)

# ----------------
# Multiple dispatch
# ----------------
methods(+)
@which 3+3 
@which 3.0 + 3.0
@which 3 + 3.0 
import Base: +
+(x::String, y::String) = string(x, y)
"Hello" + " world!"

foo(x, y) = println("duck-typed foo!")
foo(x::Int, y::Float64) = println("foo with an integer and a float")
foo(x::Float64, y::Float64) = println("foo with two floats!")
foo(x::Int, y::Int) = println("foo with two integers floats!")
foo(1, 1)
foo(1., 1.)
foo(1, 1.0)
foo(true, false)

