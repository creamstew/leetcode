# 32ビットで表現できる符号付き整数は −2,147,483,648 から 2,147,483,647というのを初めて知った

def reverse(x)
    if x < 0
        if (x.to_s.reverse.to_i) * -1 < -2147483648
            return 0
        else
            return (x.to_s.reverse.to_i) * -1
        end
    else
        if x.to_s.reverse.to_i > 2147483647
            return 0
        else
            return x.to_s.reverse.to_i
        end
    end
end