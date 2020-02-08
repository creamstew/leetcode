# 考慮するべき点がたくさんあり、難しい。。。

def rob(nums)
    return 0 if nums.empty?
    return nums.max if nums.length < 3
    f1 = nums[0]
    f2 = [f1, nums[1]].max
    3.upto nums.length do |n|
       f1, f2 = f2, [f2, f1 + nums[n - 1]].max 
    end
    f2
end