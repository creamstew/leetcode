# 久しぶりにコーディングテスト的な問題をやったが難しかった。。。
# 全通りから同じインデックスの数字を抜くという発想に至るまでが長かった。
# 時間はかかったが自力で解けて嬉しい

def two_sum(nums, target)
    nums.each_with_index do |num1, a|
        nums.each_with_index do |num2, b|
            return [a, b] if num1 + num2 == target && num1 != num2
        end
    end
    return "not find two_sum"
end