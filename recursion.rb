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