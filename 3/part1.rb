possible = 0
File.open("input", "r") do |f|
  f.each_line do |line|
    sides = line.split(' ')
    sides.map!{|x| x.to_i}.sort!
    (sides[0] + sides[1] > sides[2]) ? possible+=1 : next
  end
end
p possible
