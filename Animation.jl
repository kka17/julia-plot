a = 0
b = 2π
c = range(a, b, length = 100)


anim = @animate for i = 1:100
  plot(sin.(c)*(i+1), cos.(c)*(i+2))
end
 
gif(anim, "tutorial_anim_fps30.gif", fps = 30)

