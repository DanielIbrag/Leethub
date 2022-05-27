# @param {Integer} num
# @return {Integer}
def number_of_steps(num)
    count = 0
    while num > 0 
    if num % 2 == 0
        num = num/2
    else
        num = num-1
    end
        count+=1
    end
    return count
end