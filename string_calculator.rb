def add(s)
    num = [] 
    sum = 0
    s = s.gsub("\\n", "").gsub(" ", "").gsub("\\", "").gsub(";", "").gsub(",", "")
    s.chars.each_with_index {|i, j| num << (s[j-1] == "-" ? "-" + i : i) }
    return 0 if num.empty?
    integer = []
    num.each {|i| integer << i if (i.to_i.class == Integer && i.to_i < 0) }
    negative_integer = integer.map! {|i| i unless i.nil?}
    raise Exception, "negative numbers not allowed #{negative_integer.join(",")}" unless negative_integer.empty? 
    num.each do |i|
      sum = sum + i.to_i if i.to_i.class == Integer
    end
    sum
end
