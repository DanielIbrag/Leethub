# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}
def find_median_sorted_arrays(nums1, nums2)
  m, n = nums1.size, nums2.size
  return find_median_sorted_arrays(nums2, nums1) if m > n
  l = m + n
  i, j = kth(nums1, nums2, (l+1)/2)
  nextfew = (nums1[i,2] + nums2[j,2]).sort
  (nextfew[0] + nextfew[1-l%2]) / 2.0
end

def kth(nums1, nums2, k)
  return [0, 0] if k == 1
  m, n = nums1.length, nums2.length
  merged = k - 1
  nums1_start = [merged-n, 0].max
  nums1_end = [m, merged].min
  i = (nums1_start..nums1_end).bsearch do |i|
    i == m || merged-i-1 < 0 || nums2[merged-i-1] < nums1[i]
  end
  [i, merged-i]
end