def add(s)
    num = [] 
    sum = 0
    s = s.gsub("\\n", "").gsub(" ", "").gsub("\\", "").gsub(";", "").gsub(",", "")
    s.chars.each {|i| num << i }
    return 0 if num.empty?
    num.each do |i| 
        sum = sum + i.to_i if i.to_i.class == Integer
    end 
    sum
end
