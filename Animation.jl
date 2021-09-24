anim = @animate for i = 1:10
    mat = rand(0:100, 32, 32)
    heatmap(mat, clim=(0,255))
end
 
gif(anim, "tutorial_heatmap_anim.gif", fps = 1)
