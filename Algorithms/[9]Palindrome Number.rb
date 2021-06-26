# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
  return false if x.negative? || x.abs.bit_length > 31
  r = x.to_s.reverse.to_i
  r == x ? true : false
end
