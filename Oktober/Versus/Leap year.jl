function leapyear(year) 
    if mod(year, 4) == 0
       if mod(year, 100) == 0
        if mod(year, 400) == 0
            return println("Leap year")
        end
        return println("Not leap")
       end
       return println("Leap") 
    end
    return println("Not leap year")
end
leapyear(1900)
leapyear(1996)
leapyear(2021)
leapyear(2000)
