# @param {String} s
# @return {Boolean}
# {} ()
# スタックデータを用いて外側から内側に向かって処理する。
# hashのvaluesに相当するものがあればpush
# hashのvalues以外であればpopして対応するカッコがあるか検索。
# 全てが対応するカッコが入力されれば、stackされているカッコは全てpopされるはず。
def is_valid(s)
  hash = { '}' => '{', ']' => '[', ')' => '(' }
  stack = []
  s.chars.each do |c|
    if hash.values.include?(c)
      stack.push(c)
    else
      return false if stack.pop != hash[c]
    end
  end
  stack.empty?
end
