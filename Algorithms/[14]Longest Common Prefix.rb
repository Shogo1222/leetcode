# @param {String[]} strs
# @return {String}
# strs = ["flower","flow","flight"]
# 最も少ない文字数分ループ
# flow => 4文字目から横断して比較
def longest_common_prefix(strs)
  r = ''
  (strs.map(&:size).min - 1).downto(0) do |i|
    crossing_uniq_strs = strs.map{|s| s[i] }.uniq
    if crossing_uniq_strs.count == 1
      r = crossing_uniq_strs[0] + r
    else
      r = ''
    end
  end
  r
end
