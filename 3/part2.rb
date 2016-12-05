require 'csv'
length = File.open("input", "r").readlines.size
rows = CSV.parse(File.read('input'),{:col_sep => " "})
triangles=Array.new(length){Array.new}
row=0
count = 0
line = 0
while row <= 2 do
  while line < length-1 do
    triangles[count] << rows[line][row] << rows[line+1][row] << rows[line+2][row]
    line+=3
    count+=1
  end
row+=1
line=0
end

possible = 0
triangles.each do |triangle|
    sides = triangle.map{|x| x.to_i}.sort
    (sides[0] + sides[1] > sides[2]) ? possible+=1 : next
end
p possible
