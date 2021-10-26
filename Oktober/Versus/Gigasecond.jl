using Dates
using Test
function gs(date)
    date + Dates.Second(1000000000)
end
a = DateTime(2021,10,26)
b = DateTime(2003,07,20)
c = DateTime(0000,1,1)
gs(a)
gs(b)
gs(c)
@test gs(a)
