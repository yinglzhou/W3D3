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

def deep_dup(arr)
    return [] if arr.length == 0

    arr_new = []
    arr.each do |ele|
        if ele.is_a?(Array)
            arr_new << deep_dup(ele)
        else
            arr_new << ele
        end
    end
    arr_new
end

def fibonacci(n)
    return [1, 1].take(n) if n < 3
    prev_row = fibonacci(n-1)
    prev_row << prev_row[-2] + prev_row[-1]
end


def bsearch(arr, target)
    return [] if arr == []
    check = arr.length/2

    if arr[check] == target
        return "found"
    else
        if arr.length > 1
            if arr[check] < target 
                bsearch(arr[0..check], target)
            else
                bsearch(arr[check+1..-1], target)
            end
        end
        return "not found"
    end
end
