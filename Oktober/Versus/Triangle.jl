function check_triangle(s1, s2, s3)
    if (s1+s2>s3) && (s3+s2>s1) && (s1+s3>s2)
        if s1 == s2 == s3
            return "equilateral"
        elseif s1 == s2 || s2 == s3 || s3 == s1
            return "isosceles"
        else return"scalene"
        end
    elseif (s1+s2==s3) || (s3+s2==s1) || (s1+s3==s2) return "degenerate"
    else return error("Not a triangle")
    end
end
check_triangle(5, 5, 5)
check_triangle(5, 5, 4)
check_triangle(5, 3, 4)
check_triangle(5, 1, 4)