length = File.open("input", "r").readlines.size# {|f| count = f.read.count("\n")}
p length

file = IO.readlines("input")

#file.each{|f| p f.split(' ').map!{|x| x.to_i}[0]}
