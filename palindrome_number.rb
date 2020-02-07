def is_palindrome(x)
    x = x.to_s
    size = x.length / 2
    return ( x[0..size] == x.reverse[0..size] )
end