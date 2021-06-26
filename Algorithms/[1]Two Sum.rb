# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  hash = {}
  nums.each_with_index do |n, i|
    complement = target - n
    return [hash.fetch(complement), i] if hash.any? && hash.has_key?(complement)
    hash.store(n, i)
  end
end
