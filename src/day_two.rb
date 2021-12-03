[0, 0].tap do |(x, y)|
  File.open('input/day_two.txt', 'r').each_line do |line|
    direction, distance = line.split(' ')
    distance = distance.to_i
    case direction
    when 'forward'
      x += distance
    when 'up'
      y -= distance
    when 'down'
      y += distance
    end
  end
  puts x * y
end
