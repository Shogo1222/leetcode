# @param {Integer} x
# @return {Integer}
def reverse(x)
  r = x.to_s.reverse.to_i
  return 0 if x.abs.bit_length > 31 || r.bit_length > 31 || x == 0
  x.negative? ? -r : r
end
