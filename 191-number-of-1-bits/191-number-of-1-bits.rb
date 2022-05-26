# @param {Integer} n, a positive integer
# @return {Integer}
def hamming_weight(n)
   count = 0
  while n > 0
    n -= (n & -n)
    count += 1
  end
  count
end
