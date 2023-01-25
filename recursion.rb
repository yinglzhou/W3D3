def range(start, ender)
    return [] if ender <= start
    [start] + range(start+1, ender)
end
