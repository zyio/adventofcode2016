require 'csv'
length = File.open("input", "r").readlines.size
$rows = CSV.parse(File.read('input'),{:col_sep => " "})
$line = 0
$count = 0
$triangles=Array.new(length/3){Array.new}
while $line < length-1 do
  $triangles[$count] << $rows[$line][0] << $rows[$line+1][0] << $rows[$line+2][0]
  $line+=3
  $count+=1
end
p $triangles
