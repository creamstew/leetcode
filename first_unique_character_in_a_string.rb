# 末尾から検索していくrindexメソッドを初めて知った。

def first_uniq_char(s)
    s.each_char.with_index do |a, i|
        return i if s.index(a) == s.rindex(a)
    end
    return -1
end
