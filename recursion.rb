def range(start, ender)
    return [] if ender <= start
    [start] + range(start+1, ender)
end

def sum_arr(arr)
    return 0 if arr.length == 0 || !arr.is_a?(Array)
    arr.shift + sum_arr(arr)
end

def iter_arr(arr)
    arr.inject { |acc, ele| acc + ele }
end

def exp_one(b, n)
    return 1 if n == 0
    b * exp_one(b, n-1 )
end

def exp_two(b, n)
    return 1 if n == 0
    return b if n == 1
    if n.even?
        return exp_two(b, n/2) ** 2
    end
    b * (exp_two(b, (n-1)/2) ** 2)
end
