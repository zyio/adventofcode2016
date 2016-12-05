def main(input)
  $x = 0
  $y = 0
  $facing = "N"

  input = input.split(', ')
  p input
  input.each do |x|
    dir = x.split('')[0]
    move = x.split('').drop(1).join('').to_i
      case dir
      when "R"
        case $facing
        when "N"
          $facing = "E"
          $x = $x + move
        when "E"
          $facing = "S"
          $y = $y - move
        when "S"
          $facing = "W"
          $x = $x - move
        when "W"
          $facing = "N"
          $y = $y + move
        end
      when "L"
        case $facing
        when "N"
          $facing = "W"
          $x = $x - move
        when "E"
          $facing = "N"
          $y = $y + move
        when "S"
          $facing = "E"
          $x = $x + move
        when "W"
          $facing = "S"
          $y = $y - move
        end
      end

  end
    return $x.abs + $y.abs
end

puts main("R5, L2, L1, R1, R3, R3, L3, R3, R4, L2, R4, L4, R4, R3, L2, L1, L1, R2, R4, R4, L4, R3, L2, R1, L4, R1, R3, L5, L4, L5, R3, L3, L1, L1, R4, R2, R2, L1, L4, R191, R5, L2, R46, R3, L1, R74, L2, R2, R187, R3, R4, R1, L4, L4, L2, R4, L5, R4, R3, L2, L1, R3, R3, R3, R1, R1, L4, R4, R1, R5, R2, R1, R3, L4, L2, L2, R1, L3, R1, R3, L5, L3, R5, R3, R4, L1, R3, R2, R1, R2, L4, L1, L1, R3, L3, R4, L2, L4, L5, L5, L4, R2, R5, L4, R4, L2, R3, L4, L3, L5, R5, L4, L2, R3, R5, R5, L1, L4, R3, L1, R2, L5, L1, R4, L1, R5, R1, L4, L4, L4, R4, R3, L5, R1, L3, R4, R3, L2, L1, R1, R2, R2, R2, L1, L1, L2, L5, L3, L1")
