require 'csv'

rows = CSV.parse(File.read('input'),{:col_sep => ""})
columnsout=Array.new(8){Array.new}
count = 0
line = 0
column = 0
row = 0

while column <= 7 do
  while line < length do
    columnsout[count] << rows[line][row]
    line+=1
  end
count+=1
line=0
column+=1
row+=1
end

columnsout.each do |c|
  result = []
  c.each do |letter|
    result << "#{c.count(letter)}\t#{letter}"
  end
  puts result.sort.last
end
