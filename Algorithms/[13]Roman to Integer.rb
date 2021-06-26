# @param {String} s
# @return {Integer}
#
# ローマ数字をリバースして一文字ずつ処理
# 現在の数字より、一つ前の数字が小さければ減算
# IV => VI (2ループ目、1は5より小さいので減算)
# XL => LX (2ループ目、10は50より小さいので減算)
def roman_to_int(s)
  nums_hash = {
    "M" => 1000,
    "D" => 500,
    "C" => 100,
    "L" => 50,
    "X" => 10,
    "V" => 5,
    "I" => 1
  }
  result = 0
  reverse_arr = s.reverse!.chars
  reverse_arr.each_with_index do |c, i|
    current = nums_hash.fetch(c)
    prev = nums_hash.fetch(reverse_arr[i - 1])
    if !i.zero? && current < prev
      result -= current
    else
      result += current
    end
  end
  return result
end
