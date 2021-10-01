# Развлекаюсь: 

x = 1:10; y = rand(10, 2)
plot(x, y, title = "Поедание макарошков после переезда в общагу", label = ["Саша" "Амина"], lw = 15, xlabel = "Дни", ylabel = "Кг")

# Прямая
x = 1:2; y = rand(2)
plot(x, y)
# Я так и не поняла, как сделать 
# зависимость типа y = 1, т.е.
# прямую линию, проходящую через точку (1, 0),

# Круг
a = 0
b = 4π
c = range(a, b, length = 100)

plot(sin.(c), cos.(c))
# Прямоугольник
x = [1, 1, 1 ]
y = [3, 2, 1, ]
plotlyjs()
# ----------
# Пример из туторила, который я не понимаю, как работает и он не запускается
# ----------
function rectangle_from_coords(xb,yb,xt,yt)
    [
        xb  yb
        xt  yb
        xt  yt
        xb  yt
        xb  yb
        NaN NaN
    ]
end

some_rects=[
    rectangle_from_coords(1, 1, 5, 5)
    rectangle_from_coords(10, 10, 15, 15)
]
other_rects=[
    rectangle_from_coords(1, 10, 5, 15)
    rectangle_from_coords(10, 1, 15, 5)
]

plot(some_rects[:,1], some_rects[:,2], label = "some group")
plot!(other_rects[:,1], other_rects[:,2], label = "other group")
# Парабола
# Гипербола